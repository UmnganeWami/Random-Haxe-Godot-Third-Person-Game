/**
	Generated using Godot Bindings Generator for Haxe.
	https://github.com/SomeRanDev/Haxe-GodotBindingsGenerator
**/
package godot;
/**
	This class is used to store the state of a DTLS server. Upon [method setup] it converts connected [PacketPeerUDP] to [PacketPeerDTLS] accepting them via [method take_connection] as DTLS clients. Under the hood, this class is used to store the DTLS state and cookies of the server. The reason of why the state and cookies are needed is outside of the scope of this documentation.
	Below a small example of how to use it:
	[codeblocks]
	[gdscript]
	# server_node.gd
	extends Node
	
	var dtls := DTLSServer.new()
	var server := UDPServer.new()
	var peers = []
	
	func _ready():
	    server.listen(4242)
	    var key = load("key.key") # Your private key.
	    var cert = load("cert.crt") # Your X509 certificate.
	    dtls.setup(key, cert)
	
	func _process(delta):
	    while server.is_connection_available():
	        var peer: PacketPeerUDP = server.take_connection()
	        var dtls_peer: PacketPeerDTLS = dtls.take_connection(peer)
	        if dtls_peer.get_status() != PacketPeerDTLS.STATUS_HANDSHAKING:
	            continue # It is normal that 50% of the connections fails due to cookie exchange.
	        print("Peer connected!")
	        peers.append(dtls_peer)
	
	    for p in peers:
	        p.poll() # Must poll to update the state.
	        if p.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
	            while p.get_available_packet_count() > 0:
	                print("Received message from client: %s" % p.get_packet().get_string_from_utf8())
	                p.put_packet("Hello DTLS client".to_utf8_buffer())
	[/gdscript]
	[csharp]
	// ServerNode.cs
	using Godot;
	
	public partial class ServerNode : Node
	{
	    private DtlsServer _dtls = new DtlsServer();
	    private UdpServer _server = new UdpServer();
	    private Godot.Collections.Array<PacketPeerDTLS> _peers = new Godot.Collections.Array<PacketPeerDTLS>();
	
	    public override void _Ready()
	    {
	        _server.Listen(4242);
	        var key = GD.Load<CryptoKey>("key.key"); // Your private key.
	        var cert = GD.Load<X509Certificate>("cert.crt"); // Your X509 certificate.
	        _dtls.Setup(key, cert);
	    }
	
	    public override void _Process(double delta)
	    {
	        while (Server.IsConnectionAvailable())
	        {
	            PacketPeerUDP peer = _server.TakeConnection();
	            PacketPeerDTLS dtlsPeer = _dtls.TakeConnection(peer);
	            if (dtlsPeer.GetStatus() != PacketPeerDtls.Status.Handshaking)
	            {
	                continue; // It is normal that 50% of the connections fails due to cookie exchange.
	            }
	            GD.Print("Peer connected!");
	            _peers.Add(dtlsPeer);
	        }
	
	        foreach (var p in _peers)
	        {
	            p.Poll(); // Must poll to update the state.
	            if (p.GetStatus() == PacketPeerDtls.Status.Connected)
	            {
	                while (p.GetAvailablePacketCount() > 0)
	                {
	                    GD.Print($"Received Message From Client: {p.GetPacket().GetStringFromUtf8()}");
	                    p.PutPacket("Hello DTLS Client".ToUtf8Buffer());
	                }
	            }
	        }
	    }
	}
	[/csharp]
	[/codeblocks]
	[codeblocks]
	[gdscript]
	# client_node.gd
	extends Node
	
	var dtls := PacketPeerDTLS.new()
	var udp := PacketPeerUDP.new()
	var connected = false
	
	func _ready():
	    udp.connect_to_host("127.0.0.1", 4242)
	    dtls.connect_to_peer(udp, false) # Use true in production for certificate validation!
	
	func _process(delta):
	    dtls.poll()
	    if dtls.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
	        if !connected:
	            # Try to contact server
	            dtls.put_packet("The answer is... 42!".to_utf8_buffer())
	        while dtls.get_available_packet_count() > 0:
	            print("Connected: %s" % dtls.get_packet().get_string_from_utf8())
	            connected = true
	[/gdscript]
	[csharp]
	// ClientNode.cs
	using Godot;
	using System.Text;
	
	public partial class ClientNode : Node
	{
	    private PacketPeerDtls _dtls = new PacketPeerDtls();
	    private PacketPeerUdp _udp = new PacketPeerUdp();
	    private bool _connected = false;
	
	    public override void _Ready()
	    {
	        _udp.ConnectToHost("127.0.0.1", 4242);
	        _dtls.ConnectToPeer(_udp, validateCerts: false); // Use true in production for certificate validation!
	    }
	
	    public override void _Process(double delta)
	    {
	        _dtls.Poll();
	        if (_dtls.GetStatus() == PacketPeerDtls.Status.Connected)
	        {
	            if (!_connected)
	            {
	                // Try to contact server
	                _dtls.PutPacket("The Answer Is..42!".ToUtf8Buffer());
	            }
	            while (_dtls.GetAvailablePacketCount() > 0)
	            {
	                GD.Print($"Connected: {_dtls.GetPacket().GetStringFromUtf8()}");
	                _connected = true;
	            }
	        }
	    }
	}
	[/csharp]
	[/codeblocks]
**/
@:generated_godot_api @:bindings_api_type("class") @:is_refcounted(true) @:is_instantiable(true) @:api_type("core") @:is_resource(true) @:is_node(false) extern class DTLSServer extends godot.RefCounted {
	/**
		Setup the DTLS server to use the given [param server_options]. See [method TLSOptions.server].
	**/
	@:return_value_meta(null)
	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(1262296096)
	@:hash_compatibility(null)
	public function setup(server_options:godot.TLSOptions):godot.Error;
	/**
		Try to initiate the DTLS handshake with the given [param udp_peer] which must be already connected (see [method PacketPeerUDP.connect_to_host]).
		[b]Note:[/b] You must check that the state of the return PacketPeerUDP is [constant PacketPeerDTLS.STATUS_HANDSHAKING], as it is normal that 50% of the new connections will be invalid due to cookie exchange.
	**/
	@:return_value_meta(null)
	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(3946580474.)
	@:hash_compatibility(null)
	public function take_connection(udp_peer:godot.PacketPeerUDP):godot.PacketPeerDTLS;
}