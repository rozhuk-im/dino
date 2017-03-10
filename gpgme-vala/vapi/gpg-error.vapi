/* gcrypt.vapi
 *
 * Copyright:
 *   2008 Jiqing Qiang
 *   2008, 2010, 2012-2013 Evan Nemerson
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.

 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
 * Author:
 * 	Jiqing Qiang <jiqing.qiang@gmail.com>
 * 	Evan Nemerson <evan@coeus-group.com>
 */



[CCode (cheader_filename = "gpg-error.h")]
namespace GPGError {
	[CCode (cname = "gpg_err_source_t", cprefix = "GPG_ERR_SOURCE_")]
	public enum ErrorSource {
		UNKNOWN,
		GCRYPT,
		GPG,
		GPGSM,
		GPGAGENT,
		PINENTRY,
		SCD,
		GPGME,
		KEYBOX,
		KSBA,
		DIRMNGR,
		GSTI,
		ANY,
		USER_1,
		USER_2,
		USER_3,
		USER_4,

		/* This is one more than the largest allowed entry.  */
		DIM
	}

	[CCode (cname = "gpg_err_code_t", cprefix = "GPG_ERR_")]
	public enum ErrorCode {
		NO_ERROR,
		GENERAL,
		UNKNOWN_PACKET,
		UNKNOWN_VERSION,
		PUBKEY_ALGO,
		DIGEST_ALGO,
		BAD_PUBKEY,
		BAD_SECKEY,
		BAD_SIGNATURE,
		NO_PUBKEY,
		CHECKSUM,
		BAD_PASSPHRASE,
		CIPHER_ALGO,
		KEYRING_OPEN,
		INV_PACKET,
		INV_ARMOR,
		NO_USER_ID,
		NO_SECKEY,
		WRONG_SECKEY,
		BAD_KEY,
		COMPR_ALGO,
		NO_PRIME,
		NO_ENCODING_METHOD,
		NO_ENCRYPTION_SCHEME,
		NO_SIGNATURE_SCHEME,
		INV_ATTR,
		NO_VALUE,
		NOT_FOUND,
		VALUE_NOT_FOUND,
		SYNTAX,
		BAD_MPI,
		INV_PASSPHRASE,
		SIG_CLASS,
		RESOURCE_LIMIT,
		INV_KEYRING,
		TRUSTDB,
		BAD_CERT,
		INV_USER_ID,
		UNEXPECTED,
		TIME_CONFLICT,
		KEYSERVER,
		WRONG_PUBKEY_ALGO,
		TRIBUTE_TO_D_A,
		WEAK_KEY,
		INV_KEYLEN,
		INV_ARG,
		BAD_URI,
		INV_URI,
		NETWORK,
		UNKNOWN_HOST,
		SELFTEST_FAILED,
		NOT_ENCRYPTED,
		NOT_PROCESSED,
		UNUSABLE_PUBKEY,
		UNUSABLE_SECKEY,
		INV_VALUE,
		BAD_CERT_CHAIN,
		MISSING_CERT,
		NO_DATA,
		BUG,
		NOT_SUPPORTED,
		INV_OP,
		TIMEOUT,
		INTERNAL,
		EOF_GCRYPT,
		INV_OBJ,
		TOO_SHORT,
		TOO_LARGE,
		NO_OBJ,
		NOT_IMPLEMENTED,
		CONFLICT,
		INV_CIPHER_MODE,
		INV_FLAG,
		INV_HANDLE,
		TRUNCATED,
		INCOMPLETE_LINE,
		INV_RESPONSE,
		NO_AGENT,
		AGENT,
		INV_DATA,
		ASSUAN_SERVER_FAULT,
		ASSUAN,
		INV_SESSION_KEY,
		INV_SEXP,
		UNSUPPORTED_ALGORITHM,
		NO_PIN_ENTRY,
		PIN_ENTRY,
		BAD_PIN,
		INV_NAME,
		BAD_DATA,
		INV_PARAMETER,
		WRONG_CARD,
		NO_DIRMNGR,
		DIRMNGR,
		CERT_REVOKED,
		NO_CRL_KNOWN,
		CRL_TOO_OLD,
		LINE_TOO_LONG,
		NOT_TRUSTED,
		CANCELED,
		BAD_CA_CERT,
		CERT_EXPIRED,
		CERT_TOO_YOUNG,
		UNSUPPORTED_CERT,
		UNKNOWN_SEXP,
		UNSUPPORTED_PROTECTION,
		CORRUPTED_PROTECTION,
		AMBIGUOUS_NAME,
		CARD,
		CARD_RESET,
		CARD_REMOVED,
		INV_CARD,
		CARD_NOT_PRESENT,
		NO_PKCS15_APP,
		NOT_CONFIRMED,
		CONFIGURATION,
		NO_POLICY_MATCH,
		INV_INDEX,
		INV_ID,
		NO_SCDAEMON,
		SCDAEMON,
		UNSUPPORTED_PROTOCOL,
		BAD_PIN_METHOD,
		CARD_NOT_INITIALIZED,
		UNSUPPORTED_OPERATION,
		WRONG_KEY_USAGE,
		NOTHING_FOUND,
		WRONG_BLOB_TYPE,
		MISSING_VALUE,
		HARDWARE,
		PIN_BLOCKED,
		USE_CONDITIONS,
		PIN_NOT_SYNCED,
		INV_CRL,
		BAD_BER,
		INV_BER,
		ELEMENT_NOT_FOUND,
		IDENTIFIER_NOT_FOUND,
		INV_TAG,
		INV_LENGTH,
		INV_KEYINFO,
		UNEXPECTED_TAG,
		NOT_DER_ENCODED,
		NO_CMS_OBJ,
		INV_CMS_OBJ,
		UNKNOWN_CMS_OBJ,
		UNSUPPORTED_CMS_OBJ,
		UNSUPPORTED_ENCODING,
		UNSUPPORTED_CMS_VERSION,
		UNKNOWN_ALGORITHM,
		INV_ENGINE,
		PUBKEY_NOT_TRUSTED,
		DECRYPT_FAILED,
		KEY_EXPIRED,
		SIG_EXPIRED,
		ENCODING_PROBLEM,
		INV_STATE,
		DUP_VALUE,
		MISSING_ACTION,
		MODULE_NOT_FOUND,
		INV_OID_STRING,
		INV_TIME,
		INV_CRL_OBJ,
		UNSUPPORTED_CRL_VERSION,
		INV_CERT_OBJ,
		UNKNOWN_NAME,
		LOCALE_PROBLEM,
		NOT_LOCKED,
		PROTOCOL_VIOLATION,
		INV_MAC,
		INV_REQUEST,
		UNKNOWN_EXTN,
		UNKNOWN_CRIT_EXTN,
		LOCKED,
		UNKNOWN_OPTION,
		UNKNOWN_COMMAND,
		BUFFER_TOO_SHORT,
		SEXP_INV_LEN_SPEC,
		SEXP_STRING_TOO_LONG,
		SEXP_UNMATCHED_PAREN,
		SEXP_NOT_CANONICAL,
		SEXP_BAD_CHARACTER,
		SEXP_BAD_QUOTATION,
		SEXP_ZERO_PREFIX,
		SEXP_NESTED_DH,
		SEXP_UNMATCHED_DH,
		SEXP_UNEXPECTED_PUNC,
		SEXP_BAD_HEX_CHAR,
		SEXP_ODD_HEX_NUMBERS,
		SEXP_BAD_OCT_CHAR,
		ASS_GENERAL,
		ASS_ACCEPT_FAILED,
		ASS_CONNECT_FAILED,
		ASS_INV_RESPONSE,
		ASS_INV_VALUE,
		ASS_INCOMPLETE_LINE,
		ASS_LINE_TOO_LONG,
		ASS_NESTED_COMMANDS,
		ASS_NO_DATA_CB,
		ASS_NO_INQUIRE_CB,
		ASS_NOT_A_SERVER,
		ASS_NOT_A_CLIENT,
		ASS_SERVER_START,
		ASS_READ_ERROR,
		ASS_WRITE_ERROR,
		ASS_TOO_MUCH_DATA,
		ASS_UNEXPECTED_CMD,
		ASS_UNKNOWN_CMD,
		ASS_SYNTAX,
		ASS_CANCELED,
		ASS_NO_INPUT,
		ASS_NO_OUTPUT,
		ASS_PARAMETER,
		ASS_UNKNOWN_INQUIRE,
		USER_1,
		USER_2,
		USER_3,
		USER_4,
		USER_5,
		USER_6,
		USER_7,
		USER_8,
		USER_9,
		USER_10,
		USER_11,
		USER_12,
		USER_13,
		USER_14,
		USER_15,
		USER_16,
		MISSING_ERRNO,
		UNKNOWN_ERRNO,
		EOF,

		E2BIG,
		EACCES,
		EADDRINUSE,
		EADDRNOTAVAIL,
		EADV,
		EAFNOSUPPORT,
		EAGAIN,
		EALREADY,
		EAUTH,
		EBACKGROUND,
		EBADE,
		EBADF,
		EBADFD,
		EBADMSG,
		EBADR,
		EBADRPC,
		EBADRQC,
		EBADSLT,
		EBFONT,
		EBUSY,
		ECANCELED,
		ECHILD,
		ECHRNG,
		ECOMM,
		ECONNABORTED,
		ECONNREFUSED,
		ECONNRESET,
		ED,
		EDEADLK,
		EDEADLOCK,
		EDESTADDRREQ,
		EDIED,
		EDOM,
		EDOTDOT,
		EDQUOT,
		EEXIST,
		EFAULT,
		EFBIG,
		EFTYPE,
		EGRATUITOUS,
		EGREGIOUS,
		EHOSTDOWN,
		EHOSTUNREACH,
		EIDRM,
		EIEIO,
		EILSEQ,
		EINPROGRESS,
		EINTR,
		EINVAL,
		EIO,
		EISCONN,
		EISDIR,
		EISNAM,
		EL2HLT,
		EL2NSYNC,
		EL3HLT,
		EL3RST,
		ELIBACC,
		ELIBBAD,
		ELIBEXEC,
		ELIBMAX,
		ELIBSCN,
		ELNRNG,
		ELOOP,
		EMEDIUMTYPE,
		EMFILE,
		EMLINK,
		EMSGSIZE,
		EMULTIHOP,
		ENAMETOOLONG,
		ENAVAIL,
		ENEEDAUTH,
		ENETDOWN,
		ENETRESET,
		ENETUNREACH,
		ENFILE,
		ENOANO,
		ENOBUFS,
		ENOCSI,
		ENODATA,
		ENODEV,
		ENOENT,
		ENOEXEC,
		ENOLCK,
		ENOLINK,
		ENOMEDIUM,
		ENOMEM,
		ENOMSG,
		ENONET,
		ENOPKG,
		ENOPROTOOPT,
		ENOSPC,
		ENOSR,
		ENOSTR,
		ENOSYS,
		ENOTBLK,
		ENOTCONN,
		ENOTDIR,
		ENOTEMPTY,
		ENOTNAM,
		ENOTSOCK,
		ENOTSUP,
		ENOTTY,
		ENOTUNIQ,
		ENXIO,
		EOPNOTSUPP,
		EOVERFLOW,
		EPERM,
		EPFNOSUPPORT,
		EPIPE,
		EPROCLIM,
		EPROCUNAVAIL,
		EPROGMISMATCH,
		EPROGUNAVAIL,
		EPROTO,
		EPROTONOSUPPORT,
		EPROTOTYPE,
		ERANGE,
		EREMCHG,
		EREMOTE,
		EREMOTEIO,
		ERESTART,
		EROFS,
		ERPCMISMATCH,
		ESHUTDOWN,
		ESOCKTNOSUPPORT,
		ESPIPE,
		ESRCH,
		ESRMNT,
		ESTALE,
		ESTRPIPE,
		ETIME,
		ETIMEDOUT,
		ETOOMANYREFS,
		ETXTBSY,
		EUCLEAN,
		EUNATCH,
		EUSERS,
		EWOULDBLOCK,
		EXDEV,
		EXFULL,

		/* This is one more than the largest allowed entry.  */
		CODE_DIM
	}

	[CCode (cname = "gpg_err_code_t", cprefix = "gpg_err_")]
	public struct Error : uint {
		[CCode (cname = "gpg_err_make")]
		public Error (ErrorSource source, ErrorCode code);
		[CCode (cname = "gpg_err_make_from_errno")]
		public Error.from_errno (ErrorSource source, int err);
		public ErrorCode code { [CCode (cname = "gpg_err_code")] get; }
		public ErrorSource source { [CCode (cname = "gpg_err_source")] get; }

		[CCode (cname = "gpg_strerror")]
		public unowned string to_string ();

		[CCode (cname = "gpg_strsource")]
		public unowned string source_to_string ();
	}
}