/* gdk-pixbuf-2.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gdk", lower_case_cprefix = "gdk_")]
namespace Gdk {
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public class Pixbuf : GLib.Object {
		public unowned Gdk.Pixbuf add_alpha (bool substitute_color, uchar r, uchar g, uchar b);
		public unowned Gdk.Pixbuf apply_embedded_orientation ();
		public void composite (Gdk.Pixbuf dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, Gdk.InterpType interp_type, int overall_alpha);
		public void composite_color (Gdk.Pixbuf dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, Gdk.InterpType interp_type, int overall_alpha, int check_x, int check_y, int check_size, uint32 color1, uint32 color2);
		public unowned Gdk.Pixbuf composite_color_simple (int dest_width, int dest_height, Gdk.InterpType interp_type, int overall_alpha, int check_size, uint32 color1, uint32 color2);
		public unowned Gdk.Pixbuf copy ();
		public void copy_area (int src_x, int src_y, int width, int height, Gdk.Pixbuf dest_pixbuf, int dest_x, int dest_y);
		public static GLib.Quark error_quark ();
		public void fill (uint32 pixel);
		public unowned Gdk.Pixbuf flip (bool horizontal);
		[CCode (has_construct_function = false)]
		public Pixbuf.from_data ([CCode (array_length = false)] uchar[] data, Gdk.Colorspace colorspace, bool has_alpha, int bits_per_sample, int width, int height, int rowstride, Gdk.PixbufDestroyNotify? destroy_fn);
		[CCode (has_construct_function = false)]
		public Pixbuf.from_file (string filename) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Pixbuf.from_file_at_scale (string filename, int width, int height, bool preserve_aspect_ratio) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Pixbuf.from_file_at_size (string filename, int width, int height) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Pixbuf.from_inline (int data_length, [CCode (array_length = false)] uchar[] data, bool copy_pixels) throws GLib.Error;
		public static unowned Gdk.Pixbuf from_pixdata (Gdk.Pixdata pixdata, bool copy_pixels) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Pixbuf.from_stream (GLib.InputStream stream, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Pixbuf.from_stream_at_scale (GLib.InputStream stream, int width, int height, bool preserve_aspect_ratio, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Pixbuf.from_xpm_data ([CCode (array_length = false)] string[] data);
		public int get_bits_per_sample ();
		public Gdk.Colorspace get_colorspace ();
		public static unowned Gdk.PixbufFormat get_file_info (string filename, int width, int height);
		public static unowned GLib.SList get_formats ();
		public bool get_has_alpha ();
		public int get_height ();
		public int get_n_channels ();
		public unowned string get_option (string key);
		[CCode (array_length = false)]
		public unowned uchar[] get_pixels ();
		public int get_rowstride ();
		public int get_width ();
		[CCode (has_construct_function = false)]
		public Pixbuf (Gdk.Colorspace colorspace, bool has_alpha, int bits_per_sample, int width, int height);
		public unowned Gdk.Pixbuf rotate_simple (Gdk.PixbufRotation angle);
		public void saturate_and_pixelate (Gdk.Pixbuf dest, float saturation, bool pixelate);
		public bool save (string filename, string type, ...) throws GLib.Error;
		public bool save_to_buffer (string buffer, size_t buffer_size, string type, ...) throws GLib.Error;
		public bool save_to_bufferv (string buffer, size_t buffer_size, string type, string[] option_keys, string[] option_values) throws GLib.Error;
		public bool save_to_callback (Gdk.PixbufSaveFunc save_func, string type) throws GLib.Error;
		public bool save_to_callbackv (Gdk.PixbufSaveFunc save_func, string type, string[] option_keys, string[] option_values) throws GLib.Error;
		public bool save_to_stream (GLib.OutputStream stream, string type, GLib.Cancellable cancellable) throws GLib.Error;
		public bool savev (string filename, string type, out unowned string option_keys, out unowned string option_values) throws GLib.Error;
		public void scale (Gdk.Pixbuf dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, Gdk.InterpType interp_type);
		public Gdk.Pixbuf scale_simple (int dest_width, int dest_height, Gdk.InterpType interp_type);
		[CCode (has_construct_function = false)]
		public Pixbuf.subpixbuf (Gdk.Pixbuf src_pixbuf, int src_x, int src_y, int width, int height);
		public int bits_per_sample { get; construct; }
		public Gdk.Colorspace colorspace { get; construct; }
		public bool has_alpha { get; construct; }
		public int height { get; construct; }
		public int n_channels { get; construct; }
		public void* pixels { get; construct; }
		public int rowstride { get; construct; }
		public int width { get; construct; }
	}
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public class PixbufAnimation : GLib.Object {
		[CCode (has_construct_function = false)]
		public PixbufAnimation.from_file (string filename) throws GLib.Error;
		public int get_height ();
		public unowned Gdk.PixbufAnimationIter get_iter (GLib.TimeVal start_time);
		public unowned Gdk.Pixbuf get_static_image ();
		public int get_width ();
		public bool is_static_image ();
	}
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public class PixbufAnimationIter : GLib.Object {
		public bool advance (GLib.TimeVal current_time);
		public int get_delay_time ();
		public unowned Gdk.Pixbuf get_pixbuf ();
		public bool on_currently_loading_frame ();
	}
	[Compact]
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public class PixbufFormat {
		public unowned string get_description ();
		public unowned string get_extensions ();
		public unowned string get_license ();
		public unowned string get_mime_types ();
		public unowned string get_name ();
		public bool is_disabled ();
		public bool is_scalable ();
		public bool is_writable ();
		public void set_disabled (bool disabled);
	}
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public class PixbufLoader : GLib.Object {
		public bool close () throws GLib.Error;
		public unowned Gdk.PixbufAnimation get_animation ();
		public unowned Gdk.PixbufFormat get_format ();
		public unowned Gdk.Pixbuf get_pixbuf ();
		[CCode (has_construct_function = false)]
		public PixbufLoader ();
		public void set_size (int width, int height);
		[CCode (has_construct_function = false)]
		public PixbufLoader.with_mime_type (string mime_type) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public PixbufLoader.with_type (string image_type) throws GLib.Error;
		public bool write (uchar[] buf) throws GLib.Error;
		public virtual signal void area_prepared ();
		public virtual signal void area_updated (int x, int y, int width, int height);
		public virtual signal void closed ();
		public virtual signal void size_prepared (int width, int height);
	}
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public class PixbufSimpleAnim : Gdk.PixbufAnimation {
		public void add_frame (Gdk.Pixbuf pixbuf);
		[CCode (has_construct_function = false)]
		public PixbufSimpleAnim (int width, int height, float rate);
	}
	[Compact]
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public class PixbufSimpleAnimClass {
	}
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public class PixbufSimpleAnimIter : Gdk.PixbufAnimationIter {
	}
	[CCode (type_id = "GDK_TYPE_PIXDATA", cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public struct Pixdata {
		public uint32 magic;
		public int32 length;
		public uint32 pixdata_type;
		public uint32 rowstride;
		public uint32 width;
		public uint32 height;
		[CCode (array_length = false)]
		public weak uchar[] pixel_data;
		public bool deserialize ([CCode (array_length_pos = 0.9)] uchar[] stream) throws GLib.Error;
		public void* from_pixbuf (Gdk.Pixbuf pixbuf, bool use_rle);
		public unowned uchar[] serialize ();
		public unowned GLib.StringBuilder to_csource (string name, Gdk.PixdataDumpType dump_type);
	}
	[CCode (cprefix = "GDK_COLORSPACE_", cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public enum Colorspace {
		RGB
	}
	[CCode (cprefix = "GDK_INTERP_", cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public enum InterpType {
		NEAREST,
		TILES,
		BILINEAR,
		HYPER
	}
	[CCode (cprefix = "GDK_PIXBUF_ALPHA_", cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public enum PixbufAlphaMode {
		BILEVEL,
		FULL
	}
	[CCode (cprefix = "GDK_PIXBUF_ERROR_", cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public enum PixbufError {
		CORRUPT_IMAGE,
		INSUFFICIENT_MEMORY,
		BAD_OPTION,
		UNKNOWN_TYPE,
		UNSUPPORTED_OPERATION,
		FAILED
	}
	[CCode (cprefix = "GDK_PIXBUF_ROTATE_", cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public enum PixbufRotation {
		NONE,
		COUNTERCLOCKWISE,
		UPSIDEDOWN,
		CLOCKWISE
	}
	[CCode (cprefix = "GDK_PIXDATA_DUMP_", has_type_id = "0", cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public enum PixdataDumpType {
		PIXDATA_STREAM,
		PIXDATA_STRUCT,
		MACROS,
		GTYPES,
		CTYPES,
		STATIC,
		CONST,
		RLE_DECODER
	}
	[CCode (cprefix = "GDK_PIXDATA_", has_type_id = "0", cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public enum PixdataType {
		COLOR_TYPE_RGB,
		COLOR_TYPE_RGBA,
		COLOR_TYPE_MASK,
		SAMPLE_WIDTH_8,
		SAMPLE_WIDTH_MASK,
		ENCODING_RAW,
		ENCODING_RLE,
		ENCODING_MASK
	}
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public delegate void PixbufDestroyNotify (uchar[] pixels);
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public delegate bool PixbufSaveFunc (string buf, size_t count, GLib.Error error);
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public const int PIXBUF_FEATURES_H;
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public const int PIXBUF_MAGIC_NUMBER;
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public const int PIXBUF_MAJOR;
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public const int PIXBUF_MICRO;
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public const int PIXBUF_MINOR;
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public const string PIXBUF_VERSION;
	[CCode (cheader_filename = "gdk-pixbuf/gdk-pixdata.h")]
	public const int PIXDATA_HEADER_LENGTH;
}
