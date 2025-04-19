Return-Path: <linux-man+bounces-2782-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 674E6A94567
	for <lists+linux-man@lfdr.de>; Sat, 19 Apr 2025 22:23:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73D0C16A720
	for <lists+linux-man@lfdr.de>; Sat, 19 Apr 2025 20:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61BAA1E0E1A;
	Sat, 19 Apr 2025 20:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNIi6vHd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2320519ADB0
	for <linux-man@vger.kernel.org>; Sat, 19 Apr 2025 20:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745094231; cv=none; b=HTci2mRz6ggNnmqcHLyfVmwOM0fsdQ6Sm6NqMKYEc9kYwQVQPmmER8L5oNhrhBFmubNAWJL0HJdR+Dc9jZ9WaoLjy7RYe//CfrmHTzqt/qKtp7trTaeir2EbopP7bru+TtK+hqjSH2vGqK8Q/PqOoGqUKANGPhckGsLs0Ov6Z58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745094231; c=relaxed/simple;
	bh=C15d71JewQfSgWLIxkresS8okSKm0bR6xSFu1GAR020=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I3JFAhh5kO5lHNxq1CG+Yv+bnHjjE9gteB0HXCZBehAmpceGVpTrUn4ZPilVb1yoosur2/wBF2knoVjI6KZD1AERVQFfsSoOQU5e2BnbuAv75s3hRsmSKVkJEYu33dri52XsWtibOh/pVC/Wfkcw2y7np0thWGIBghmpXuCJHu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNIi6vHd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 568A5C4CEEA;
	Sat, 19 Apr 2025 20:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745094230;
	bh=C15d71JewQfSgWLIxkresS8okSKm0bR6xSFu1GAR020=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cNIi6vHdD6SkG0fIYKLD54ED3v2591X0Ukgld0CtMWDZNmNfwqJlpaZuNIpiqKkI4
	 p04OpsBIjF730qqJvHEN/44lNVy5qj2YfSY51pUfCeykL+zU6TC3rtEJD9JHH9ANOj
	 +eEL3iVm9vnLaXhIfg+Si7Wy6G8Nmx8GSF18xcJCLTqvBr+nMUix6nfqYcJLKR52xX
	 aM3cqz0z/cRyJ4NjM4+c81rPW08pLpavYSwoTnnhzRUsFSHInjnaaEv+Mi9qAcD2y7
	 RXX9MEvplINpTD4w5dPwSc39u1d4v32pIMQL721rIs+uZ4STfwECajWw70THBlyYiw
	 Q6kbqH399BuRQ==
Date: Sat, 19 Apr 2025 22:23:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Kerr <jk@codeconstruct.com.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man7/mctp.7: Add man page for Linux MCTP support
Message-ID: <zll3y3orzq5vkwkujzc35sogc6tbbmxqkkmiivnp34qca6hf4l@d35ookjfz26k>
References: <20250417-mctp-v3-1-07fff4d26f73@codeconstruct.com.au>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dpt3krqmuose53mw"
Content-Disposition: inline
In-Reply-To: <20250417-mctp-v3-1-07fff4d26f73@codeconstruct.com.au>


--dpt3krqmuose53mw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Kerr <jk@codeconstruct.com.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man7/mctp.7: Add man page for Linux MCTP support
References: <20250417-mctp-v3-1-07fff4d26f73@codeconstruct.com.au>
MIME-Version: 1.0
In-Reply-To: <20250417-mctp-v3-1-07fff4d26f73@codeconstruct.com.au>

Hi Jeremy,

On Thu, Apr 17, 2025 at 10:50:07AM +0800, Jeremy Kerr wrote:
> This change adds a brief description for the new Management Component
> Transport Protocol (MCTP) support added to Linux as of bc49d8169.
>=20
> This is a fairly regular sockets-API implementation, so we're just
> describing the semantics of socket, bind, sendto and recvfrom for the
> new protocol.
>=20
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> ---
> This change picks up on an incomplete submission from way back in 2021,
> adding mctp.7.

Thanks a lot!

> I have updated form some feedback on v2, and updated to some conventions
> since that change was first submitted, but let me know if there is
> anything I may have missed in that time, or if submission requirements
> have changed too.

Some have changed, but since this patch is old, and it LGTM except for
some minor things, I've done the amends myself.  I don't want to push
back on the patch again.  :-)

I propose the following diff to amend your patch, if it looks good to
you.  Let me know, and I'll amend and push.  Feel free to ask any doubts
about it.

	diff --git i/man/man7/mctp.7 w/man/man7/mctp.7
	index e58a03e10..47aea9b1d 100644
	--- i/man/man7/mctp.7
	+++ w/man/man7/mctp.7
	@@ -1,4 +1,4 @@
	-.\" Copyright (c) 2021,2025 Jeremy Kerr <jk@codeconstruct.com.au>
	+.\" Copyright 2021,2025, Jeremy Kerr <jk@codeconstruct.com.au>
	 .\"
	 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
	 .\"
	@@ -9,9 +9,8 @@ .SH SYNOPSIS
	 .nf
	 .BR "#include <linux/mctp.h>" \
	 "  /* MCTP address type and protocol constants */"
	-.BR "#include <sys/socket.h>" \
	-"  /* Definition of " socket() ", " AF_* " and " SOCK_* " */"
	-.PP
	+.B #include <sys/socket.h>
	+.P
	 .IB mctp_socket " =3D socket(AF_MCTP, SOCK_DGRAM, 0);"
	 .fi
	 .SH DESCRIPTION
	@@ -22,7 +21,7 @@ .SH DESCRIPTION
	 typically used between devices within a server system.
	 Message reliability and ordering are not guaranteed,
	 but message boundaries are preserved.
	-.PP
	+.P
	 The API for MCTP messaging uses a standard sockets interface,
	 using the
	 .BR sendto (2)
	@@ -31,28 +30,31 @@ .SH DESCRIPTION
	 classes of system calls to transfer messages.
	 Messages may be fragmented into packets before transmission,
	 and reassembled at the remote endpoint.
	-This fragmentation and reassembly is transparent to userspace.
	+This fragmentation and reassembly is transparent to user space.
	 .SS Address format
	-MCTP addresses (also referred to as EIDs, or Endpoint Identifiers) are
	-single-byte values,
	+MCTP addresses
	+(also referred to as EIDs, or Endpoint Identifiers)
	+are single-byte values,
	 typed as
	 .IR mctp_eid_t .
	-Packets between a local and remote endpoint are identified by
	+Packets between a local and remote endpoint
	+are identified by
	 the source and destination EIDs,
	 plus a three-bit tag value.
	-.PP
	-Addressing data is passed in socket system calls through
	-.I struct sockaddr_mctp
	+.P
	+Addressing data is passed in socket system calls through a
	+.I sockaddr_mctp
	+structure,
	 defined as:
	-.PP
	+.P
	 .in +4n
	 .EX
	 typedef uint8_t        mctp_eid_t;
	-
	+\&
	 struct mctp_addr {
	     mctp_eid_t         s_addr;
	 };
	-
	+\&
	 struct sockaddr_mctp {
	     unsigned short     smctp_family;  /* =3D AF_MCTP */
	     uint16_t           __smctp_pad0;
	@@ -69,33 +71,35 @@ .SS Sending messages
	 .BR sendto (2)
	 and
	 .BR sendmsg (2)
	-system calls, by providing a
	-.I struct sockaddr_mctp
	+system calls,
	+by providing a
	+.I sockaddr_mctp
	+structure
	 describing the addressing parameters.
	-.PP
	+.P
	 .in +4n
	 .EX
	-struct sockaddr_mctp addr;
	-ssize_t len;
	-char *buf;
	-
	+ssize_t               n;
	+const char            *buf;
	+struct sockaddr_mctp  addr;
	+\&
	 /* unused fields must be zero */
	 memset(&addr, 0, sizeof(addr));
	-
	+\&
	 /* set message destination */
	 addr.smctp_family =3D AF_MCTP;
	 addr.smctp_network =3D 0;
	 addr.smctp_addr.s_addr =3D 8; /* remote EID */
	 addr.smctp_tag =3D MCTP_TAG_OWNER;
	 addr.smctp_type =3D MYPROGRAM_MCTP_TYPE_ECHO; /* example type */
	-
	+\&
	 buf =3D "hello, world!"
	-
	-len =3D sendto(sd, buf, 13, 0,
	-             (struct sockaddr *)&addr, sizeof(addr));
	+\&
	+n =3D sendto(sd, buf, 13, 0,
	+           (struct sockaddr *) &addr, sizeof(addr));
	 .EE
	 .in
	-.PP
	+.P
	 Here, the sender owns the message tag; so
	 .B MCTP_TAG_OWNER
	 is used as the tag data.
	@@ -107,7 +111,7 @@ .SS Sending messages
	 .BR EBUSY .
	 This allocated tag remains associated with the socket,
	 so that any replies to the sent message will be received by the same sock=
et.
	-.PP
	+.P
	 Sending a MCTP message requires the
	 .B CAP_NET_RAW
	 capability.
	@@ -117,64 +121,63 @@ .SS Receiving messages
	 and
	 .BR recvmsg (2)
	 system calls.
	-.PP
	+.P
	 .in +4n
	 .EX
	-struct sockaddr_mctp addr;
	-socklen_t addrlen;
	-char buf[13];
	-
	+char                  buf[13];
	+socklen_t             addrlen;
	+struct sockaddr_mctp  addr;
	+\&
	 addrlen =3D sizeof(addr);
	-
	-len =3D recvfrom(sd, buf, sizeof(buf), 0,
	-               (struct sockaddr *)&addr, &addrlen);
	+\&
	+n =3D recvfrom(sd, buf, sizeof(buf), 0,
	+             (struct sockaddr *) &addr, &addrlen);
	 .EE
	 .in
	-.PP
	+.P
	 In order to receive an incoming message,
	-the receiver will need to either have previously sent a message to the sa=
me
	-endpoint,
	+the receiver will need to
	+either have previously sent a message to the same endpoint,
	 or performed a
	 .BR bind (2)
	 to receive all messages of a certain type:
	-.PP
	+.P
	 .in +4n
	 .EX
	-struct sockaddr_mctp addr;
	-
	+struct sockaddr_mctp  addr;
	+\&
	 addr.smctp_family =3D AF_MCTP;
	 addr.smctp_network =3D MCTP_NET_ANY;
	 addr.smctp_addr.s_addr =3D MCTP_ADDR_ANY;
	 addr.smctp_type =3D MYPROGRAM_MCTP_TYPE_ECHO; /* our 'echo' type */
	-
	-int rc =3D bind(sd, (struct sockaddr *)&addr, sizeof(addr));
	+\&
	+int rc =3D bind(sd, (struct sockaddr *) &addr, sizeof(addr));
	 .EE
	 .in
	-.PP
	+.P
	 This call requires the
	 .B CAP_NET_BIND_SERVICE
	 capability,
	-and will result in the socket receiving all messages sent to
	-locally-assigned EIDs,
	+and will result in
	+the socket receiving all messages sent to locally-assigned EIDs,
	 for the specified message type.
	-.PP
	+.P
	 After a
	 .BR recvfrom (2)
	 or
	 .BR recvmsg (2)
	 returns a success condition,
	-the provided address argument will be populated with the sender's network=
 and
	-EID,
	+the provided address argument
	+will be populated with the sender's network and EID,
	 as well as the tag value used for the message.
	 Any reply to this message should pass the same address and tag value
	 (with the TO bit cleared)
	 to indicate that is is directed to the same remote endpoint.
	 .SH SEE ALSO
	 .BR socket (7)
	-.PP
	-The kernel source file
	-.IR Documentation/networking/mctp.rst .
	-.PP
	-The DSP0236 specification, at
	+.P
	+.I linux.git/Documentation/networking/mctp.rst
	+.P
	 .UR https://www.dmtf.org/\:standards/\:pmci
	+The DSP0236 specification
	 .UE .

> I have some follow-up patches to add newer functions of the kernel mctp
> stack, but am planning to send those once the base page structure is
> defined, and any general feedback incorporated.
>=20
> Of course, comments, questions etc are most welcome.

I'll comment a few things below, but they're covered by the diff from
above.  It's just to let you know about them.

> ---
> Changes in v3:
> - rebase for new file structure
> - more fine-grained semantic newlines
> - update headers and .TH to match newer formats
> - add #include comments
> - adjust URI breakpoints
> - Link to v2: https://lore.kernel.org/r/20211111015323.3542313-1-jk@codec=
onstruct.com.au/
>=20
> Changes in v2:
> - Fix synopsis variable formatting
> - Semantic newlines
> - remove unnecessary escape
> - make custom constants more obvious
> - Add URI breakpoints
> - fix sockaddr_mctp misuse
> - Link to v1: https://lore.kernel.org/r/20211014070519.2037226-1-jk@codec=
onstruct.com.au/
> ---
>  man/man7/address_families.7 |   7 ++
>  man/man7/mctp.7             | 180 ++++++++++++++++++++++++++++++++++++++=
++++++
>  2 files changed, 187 insertions(+)
>=20
> diff --git a/man/man7/address_families.7 b/man/man7/address_families.7
> index 3c2400820627035d2fced0d9e49d61aa01e2d3f3..4e29e0bfb88447c64d53d44c3=
fae27ccc435e241 100644
> --- a/man/man7/address_families.7
> +++ b/man/man7/address_families.7
> @@ -387,6 +387,13 @@ XDP (express data path) interface (since Linux 4.18).
>  See
>  .I Documentation/networking/af_xdp.rst
>  in the Linux kernel source tree for details.
> +.TP
> +.B AF_MCTP
> +.\" commit: bc49d8169aa72295104f1558830c568efb946315
> +MCTP (Management Component Transport Protocol) interface (since Linux 5.=
15),
> +as defined by the DMTF specification DSP0236.
> +For further information, see
> +.BR mctp (7).
>  .SH SEE ALSO
>  .BR socket (2),
>  .BR socket (7)
> diff --git a/man/man7/mctp.7 b/man/man7/mctp.7
> new file mode 100644
> index 0000000000000000000000000000000000000000..e58a03e1063086fa8758c3b09=
6db044b01c3c277
> --- /dev/null
> +++ b/man/man7/mctp.7
> @@ -0,0 +1,180 @@
> +.\" Copyright (c) 2021,2025 Jeremy Kerr <jk@codeconstruct.com.au>

I will soon change all copyright lines to something generic like

	Copyright, the contributors to the Linux man-pages project

and then a CREDITS file that lists every contributor.

> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH mctp 7 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +mctp \- Management Component Transport Protocol
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/mctp.h>" \
> +"  /* MCTP address type and protocol constants */"
> +.BR "#include <sys/socket.h>" \
> +"  /* Definition of " socket() ", " AF_* " and " SOCK_* " */"

For the include that provides the function (socket() in this case), we
don't have comment.

> +.PP

We switched from .PP to .P some time ago.  They are synonyms.  .P is
shorter, and is what groff(1) recommends.

> +.IB mctp_socket " =3D socket(AF_MCTP, SOCK_DGRAM, 0);"
> +.fi
> +.SH DESCRIPTION
> +Linux implements the Management Component Transport Protocol (MCTP),
> +specified by DMTF spec DSP0236,
> +currently at version 1.
> +This is a connectionless protocol,
> +typically used between devices within a server system.
> +Message reliability and ordering are not guaranteed,
> +but message boundaries are preserved.
> +.PP
> +The API for MCTP messaging uses a standard sockets interface,
> +using the
> +.BR sendto (2)
> +and
> +.BR recvfrom (2)
> +classes of system calls to transfer messages.
> +Messages may be fragmented into packets before transmission,
> +and reassembled at the remote endpoint.
> +This fragmentation and reassembly is transparent to userspace.

We say "user space", not userspace.  This is documented in man-pages(7).

> +.SS Address format
> +MCTP addresses (also referred to as EIDs, or Endpoint Identifiers) are
> +single-byte values,

Phrasal semantic newlines can be improved here a little bit.

> +typed as
> +.IR mctp_eid_t .
> +Packets between a local and remote endpoint are identified by
> +the source and destination EIDs,
> +plus a three-bit tag value.
> +.PP
> +Addressing data is passed in socket system calls through
> +.I struct sockaddr_mctp

We usually say 'foo structure' instead of 'struct foo' in the manual
pages.

> +defined as:
> +.PP
> +.in +4n
> +.EX
> +typedef uint8_t        mctp_eid_t;
> +

Blank lines produce a diagnostic from groff(1).  In this case, we do
want them, so we use the dummy character \&, which acts as a no-op, but
avoids having an empty line (so avoids the diagnostic).

> +struct mctp_addr {
> +    mctp_eid_t         s_addr;
> +};
> +
> +struct sockaddr_mctp {
> +    unsigned short     smctp_family;  /* =3D AF_MCTP */
> +    uint16_t           __smctp_pad0;
> +    int                smctp_network; /* local network identifier */
> +    struct mctp_addr   smctp_addr;    /* EID */
> +    uint8_t            smctp_type;    /* message type byte */
> +    uint8_t            smctp_tag;     /* tag value & owner */
> +    uint8_t            __smctp_pad1;
> +};
> +.EE
> +.in
> +.SS Sending messages
> +Messages can be transmitted using the
> +.BR sendto (2)
> +and
> +.BR sendmsg (2)
> +system calls, by providing a
> +.I struct sockaddr_mctp
> +describing the addressing parameters.
> +.PP
> +.in +4n
> +.EX
> +struct sockaddr_mctp addr;
> +ssize_t len;

I don't like using length to refer to this, because length in C usually
refers to the number of non-zero characters in a string, while size
refers to the number of bytes in a buffer.  Thus, I'd use size here, but
for simplicity, I use 'n' for the return of send or write or similar
APIs.

> +char *buf;

This is missing const, since you assign a string literal.

> +
> +/* unused fields must be zero */
> +memset(&addr, 0, sizeof(addr));
> +
> +/* set message destination */
> +addr.smctp_family =3D AF_MCTP;
> +addr.smctp_network =3D 0;
> +addr.smctp_addr.s_addr =3D 8; /* remote EID */
> +addr.smctp_tag =3D MCTP_TAG_OWNER;
> +addr.smctp_type =3D MYPROGRAM_MCTP_TYPE_ECHO; /* example type */
> +
> +buf =3D "hello, world!"
> +
> +len =3D sendto(sd, buf, 13, 0,
> +             (struct sockaddr *)&addr, sizeof(addr));

We use a space between a cast and what it converts.

> +.EE
> +.in
> +.PP
> +Here, the sender owns the message tag; so
> +.B MCTP_TAG_OWNER
> +is used as the tag data.
> +The kernel will allocate a specific tag value for this message.
> +If no tag is available,
> +.BR sendto (2)
> +will return an error,
> +with errno set to
> +.BR EBUSY .
> +This allocated tag remains associated with the socket,
> +so that any replies to the sent message will be received by the same soc=
ket.
> +.PP
> +Sending a MCTP message requires the
> +.B CAP_NET_RAW
> +capability.
> +.SS Receiving messages
> +Messages can be received using the
> +.BR recvfrom (2)
> +and
> +.BR recvmsg (2)
> +system calls.
> +.PP
> +.in +4n
> +.EX
> +struct sockaddr_mctp addr;
> +socklen_t addrlen;
> +char buf[13];
> +
> +addrlen =3D sizeof(addr);
> +
> +len =3D recvfrom(sd, buf, sizeof(buf), 0,
> +               (struct sockaddr *)&addr, &addrlen);
> +.EE
> +.in
> +.PP
> +In order to receive an incoming message,
> +the receiver will need to either have previously sent a message to the s=
ame
> +endpoint,
> +or performed a
> +.BR bind (2)
> +to receive all messages of a certain type:
> +.PP
> +.in +4n
> +.EX
> +struct sockaddr_mctp addr;
> +
> +addr.smctp_family =3D AF_MCTP;
> +addr.smctp_network =3D MCTP_NET_ANY;
> +addr.smctp_addr.s_addr =3D MCTP_ADDR_ANY;
> +addr.smctp_type =3D MYPROGRAM_MCTP_TYPE_ECHO; /* our 'echo' type */
> +
> +int rc =3D bind(sd, (struct sockaddr *)&addr, sizeof(addr));
> +.EE
> +.in
> +.PP
> +This call requires the
> +.B CAP_NET_BIND_SERVICE
> +capability,
> +and will result in the socket receiving all messages sent to
> +locally-assigned EIDs,
> +for the specified message type.
> +.PP
> +After a
> +.BR recvfrom (2)
> +or
> +.BR recvmsg (2)
> +returns a success condition,
> +the provided address argument will be populated with the sender's networ=
k and
> +EID,
> +as well as the tag value used for the message.
> +Any reply to this message should pass the same address and tag value
> +(with the TO bit cleared)
> +to indicate that is is directed to the same remote endpoint.
> +.SH SEE ALSO
> +.BR socket (7)
> +.PP
> +The kernel source file
> +.IR Documentation/networking/mctp.rst .

I have in mind a global replacement in the manual pages to use

	linux.git/Documentation/...

in every reference to kernel source files.  It's simpler, I think.

> +.PP
> +The DSP0236 specification, at
> +.UR https://www.dmtf.org/\:standards/\:pmci
> +.UE .

UR/UE can contain text within them, which is precisely for that.
See groff_man(7):

       .UR uri
       .UE [trailing=E2=80=90text]
              Identify uri as an RFC 3986 URI hyperlink with  the  text
              between  the  two macro calls as the link text.  An argu=E2=
=80=90
              ment to .UE is placed after the link text without  inter=E2=
=80=90
              vening  space.   uri  may  not be visible in the rendered
              document if hyperlinks are enabled and supported  by  the
              output  driver.   If  they  are  not, uri is set in angle
              brackets after the link text  and  before  trailing=E2=80=90t=
ext.
              If hyperlinking is enabled but there is no link text, uri
              is formatted and hyperlinked without angle brackets.


If you confirm, I'll amend and push.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--dpt3krqmuose53mw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgEBksACgkQ64mZXMKQ
wqn06g//aJwxMv5NlEL18kNxT7LRpHPzmw8wO2v/e5mnrWnBM66xmW8O0VWJXfcd
wXAMVpM50NmU1xZDGvIZcvttAlKjiDVRAcwUk0F5gYN/FPXFUk9g6066SuHGOMwZ
ZyXFYeWbxguX5WfE2A9U5PrLi82SfnXxFNIKk/sprrJSfqcWranPcdOBriscgOAC
WVo9OlolTiZBQlx8FqRQar0VByMwgmbxSa5+ywE0PTd6E73i9QTxjW716ZG8LUwx
S8lDu3e7S/Zab/BcFHoCP3pgPmaQMfbvqZ/VCy8nvVOznur7vLPc9lqMojRm2ub5
RJiH29kEhgTkN3cwTcSoCE2lqmYzcy4bVEnJVq0Va9TPsNUXPdilYQP114fblnI5
CDDUck0dei1Nlvpu8cJvkwRsQhiNq4jWaUr5MrRVeoN3G5lp9/aewd9gdR9zUGU+
1HXLy74BAMN61BsC3lzdzEXhgBulFawHXuAF+3m1SadpseZRa/HUOe61ir+lcxZx
V/j4JFJroJROKgxV+DXB7mELxkPrrsvHj7fR5vKRUvtDgO4RojimDYXQgSJiJBIl
nO6VoxE/WtWoeIRx5EpMN5wWyInctznYY4XpemvK5DifrOIceCgtix2ekDd8ZCUd
/uKbvjJZsUvYHdCJjkhN0/KytVbuF6SMDp/JbopVoaTnJ4WW3E8=
=gglR
-----END PGP SIGNATURE-----

--dpt3krqmuose53mw--

