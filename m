Return-Path: <linux-man+bounces-642-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B130187DD4B
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 14:31:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C7151F21236
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 13:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0DB31AAD3;
	Sun, 17 Mar 2024 13:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="bIR2Eyi2"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0C21BDC3
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 13:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710682288; cv=none; b=JjkR5wNcJViOFN4FFkNsOERfjP1PKTXUSJOxK9uMPoo87Xwz4ZASInIHW7d9DmoRWumxIJgGDZX5xOshV4accGEdO7tfrhuTu1t2XyHHumf4G328vjbQYrosSkoEchavL+gVtanISR+dUd9KAE9Eavq7ar7UrYpvTlndsIG2evk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710682288; c=relaxed/simple;
	bh=0sfJkKCLaB2A1G31rxekzd2MQIfhGspbgXY1E1M635w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qjUDL8uH3KT+aPd2/3mUkY9vfXY8iaL+Dkk7ZH/exPC+MorF2QrEMN2E7BHf7XvwGUQEiemgp5cfYnYNI78O3xhl6LaV5vDlVRAxkVR4nMhu0EBVFgYAS0F7O0fZQNd2KVTD/FOOqoUofMXXebjATV+aYtEqdHwEkK9Lsr1MOOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=bIR2Eyi2; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710682281;
	bh=0sfJkKCLaB2A1G31rxekzd2MQIfhGspbgXY1E1M635w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bIR2Eyi27sYTQrQ4u85bFsFzAPdlp+nVrxkxxqTUvmANmXmOzgiQ8sIRpoOaNFz5L
	 QySZDQ206vF/EaTqhUq8oQhsoEpXXzRcVWnzS1b24QlNYOCllqZ9KXhWAHXVLnE3DT
	 Y+pwg46nKcogmOE1gjQdxyGgB9eo0tljldHLBkohgmKfjw8S7kvN/2wa2yAaK+9lXS
	 IYrnxtoRaZqy0xnc6JIBADtG99ntuTfy8MdQywDYbvjhj7t7LG3vQa0f02zEVAb1qK
	 B3Rja7vbdBzVxQAIpGenuSMiTffrEyvUselUW+t+0nNS+bnv/2nlCafH4+0JzRE9o5
	 4YkVPX/vhwj5g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BEDD912A6;
	Sun, 17 Mar 2024 14:31:21 +0100 (CET)
Date: Sun, 17 Mar 2024 14:31:21 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3] proc_pid_io.5: dewafflify
Message-ID: <5b5a5e461deafb011c815023001424b0dbc2836f.1710682230.git.nabijaczleweli@nabijaczleweli.xyz>
References: <Zfbe1yFQBdLnPh4-@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d72mf5zmy4eqf6ut"
Content-Disposition: inline
In-Reply-To: <Zfbe1yFQBdLnPh4-@debian>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--d72mf5zmy4eqf6ut
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This page copies verbatim the contents of
Documentation/filesystems/proc.rst, added wholesale in
commit f9c99463b0cd05603d125c915e2886d55a686b82 ("[PATCH] Documentation
for io-accounting / reporting via procfs") in 2007.

As such, it mirrors the sensibilities of the time =E2=80=92
writing "successful read returns" as "data pulled from storage. actually
just the data the process gave to read(). this also means from non-regular
files! whether the data was pulled from storage doesn't matter actually
(obligatory cache mention)"
for the modern reader this is just a lot of waffling
(note also that processes give no data to read()!)
=E2=80=92 and sensibilities of the sheepish implementer in kernel documenta=
tion =E2=80=92
"an attempt" for a well-defined kernel behaviour, mentioning the
"current implementation", consistent mentions of specific kernel-internal
caching mechanisms, "the big inaccuracy here".

Re-write to be more useful and less misleading as documentation;
the syscall enumeration is accurate for kernel v6.8, but the sysc? stats
are also bumped by kernel_{read,write}(), which is sometimes used by too
many syscalls in too many scenarios to usefully enumerate.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Hi!

On Sun, Mar 17, 2024 at 01:15:18PM +0100, Alejandro Colomar wrote:
> On Sun, Mar 17, 2024 at 12:01:41PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > -The number of bytes
> > -which this task and its waited-for children
> > -have caused to be read from storage.
> > -This is simply the sum of bytes which this process passed to
> > +The number of bytes returned by successful
> In this case, I think I prefer to break before "returned".
> What would you do?
this is a "meh" moment imo; in running text sure, maybe,
but this is broken up by the .BR
so it starts to devolve into 3-word-line territory which is worse

> > -Attempt to count the number of read I/O operations\[em]that is,
> > -system calls such as
> > +The number of "I/O read" system calls\[em]those from the
> From I/O, read only accounts for the I.  :)
> Should we just say "read"?
Yeah, "I/O" is overloaded here; "file read" works better.

> >  .BR read (2)
> > +family
> > +(including when invoked used by the kernel as part of other syscalls),
> This parenthesis being there seems to imply that if the kernel calls
> sendfile internally for $reasons (even if it doesn't at the moment), it
> won't be counted.  I think it makes more sense at the end of the list,
> no?
Well, as-is it doesn't, and I reduced this to the narrowest definition
I can prove, but I guess so, yes.

Also just noticed "invoked used".

 man5/proc_pid_io.5 | 67 +++++++++++++++++++++-------------------------
 1 file changed, 30 insertions(+), 37 deletions(-)

diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
index dc75a91de..7f840f3bb 100644
--- a/man5/proc_pid_io.5
+++ b/man5/proc_pid_io.5
@@ -33,63 +33,56 @@ .SH DESCRIPTION
 .TP
 .IR rchar ": characters read"
 The number of bytes
-which this task and its waited-for children
-have caused to be read from storage.
-This is simply the sum of bytes which this process passed to
+returned by successful
 .BR read (2)
 and similar system calls.
-It includes things such as terminal I/O and
-is unaffected by whether or not actual
-physical disk I/O was required (the read might have been satisfied from
-pagecache).
 .TP
 .IR wchar ": characters written"
 The number of bytes
-which this task and its waited-for children
-have caused, or shall cause to be written to disk.
-Similar caveats apply here as with
-.IR rchar .
+returned by successful
+.BR write (2)
+and similar system calls.
 .TP
 .IR syscr ": read syscalls"
-Attempt to count the number of read I/O operations\[em]that is,
-system calls such as
+The number of "file read" system calls\[em]those from the
 .BR read (2)
+family
+.BR sendfile (2),
+.BR copy_file_range (2),
 and
-.BR pread (2).
+.BR ioctl (2)
+.BR BTRFS_IOC_ENCODED_READ [ _32 ]
+(including when invoked by the kernel as part of other syscalls),
 .TP
 .IR syscw ": write syscalls"
-Attempt to count the number of write I/O operations\[em]that is,
-system calls such as
+The number of "file write" system calls\[em]those from the
 .BR write (2)
+family
+.BR sendfile (2),
+.BR copy_file_range (2),
 and
-.BR pwrite (2).
+.BR ioctl (2)
+.BR BTRFS_IOC_ENCODED_WRITE [ _32 ]
+(including when invoked by the kernel as part of other syscalls),
 .TP
 .IR read_bytes ": bytes read"
-Attempt to count the number of bytes
-which this process and its waited-for children
-really did cause to be fetched from the storage layer.
+The number of bytes really fetched from the storage layer.
 This is accurate for block-backed filesystems.
 .TP
 .IR write_bytes ": bytes written"
-Attempt to count the number of bytes
-which this process and its waited-for children
-caused to be sent to the storage layer.
+The number of bytes really sent to the storage layer.
 .TP
 .IR cancelled_write_bytes :
-The big inaccuracy here is truncate.
-If a process writes 1 MB to a file and then deletes the file,
-it will in fact perform no writeout.
-But it will have been accounted as having caused 1 MB of write.
-In other words:
-this field represents the number of bytes
-which this process and its waited-for children
-caused to not happen, by truncating pagecache.
-A task can cause "negative" I/O too.
-If this task truncates some dirty pagecache,
-some I/O which another task has been accounted for
-(in its
-.IR write_bytes )
-will not be happening.
+The above statistics fail to account for truncation:
+if a process writes 1 MB to a regular file and then removes it,
+said 1 MB will not be written, but
+.I will
+have nevertheless been accounted as a 1 MB write.
+This field represents the number of bytes "saved" from I/O writeback.
+This can yield to having done negative I/O
+if caches dirtied by another process are truncated.
+This figure applies to I/O already accounted-for by
+.IR write_bytes .
 .RE
 .IP
 .IR Note :
--=20
2.39.2

--d72mf5zmy4eqf6ut
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmX28KkACgkQvP0LAY0m
WPHXFQ//fcIN/AV6UtJJJYb1x12RVv/+CAsgtMPaA7BzuuzjyvgKxcAkF+IUU9O8
hlwIk8+rEpLqm6Fc5GpfQgEjSw7oz9QJ/PZ0chMHcwJxPEjfi4gaEhQyfjxJoIDF
xHBpFucBSCBMMDeu1ngpyUT2RytkNhZcfMNXyaBQExT9aFMra38fPukwbkKnJHAz
leZQ1JFYWwuAjY97vfS9uoyoe7jAAaqvE58m9h1E2/YspDcRKfloKce9K/3iordi
3xTBGfa3pWed9snhmjrX3vhz5SAHrl1Uj+kDz/8/KJBEg9bYm3I0Cta69lxjItJL
UkXVPB/GnwpulgIXIuo8QQKfUJLk+8FN0lEseVMhBB3tPi+KRwUzm0XseSLu2uhc
RFXig4bNHnAvo2izXwG5sZpQHbZvKop1sSyctBjme9StrE/YrUDB2PbBJdX7mHEu
247bRx2H0QfoCNgXcf3bGmhkk55iOqR+3/UwlTA/jQG6ofyO9739qcj90y/A1WlR
koKkKJunbJicOALEXmCdwr6lFmPLMiwgHQe7aZWn0LJjIpCpO0pucp0hjzqW02mx
5QR8ZqAaqF7g44Ij8gGIxy4J0KNraMEOM3iuYfXNPB0mEEPCWhYhXfJmN3DRbGn2
UlOQTkLe7aX3EyGC2jkncLEOVow7nlNV8Ufc3+0Z/wgL0FFe1QI=
=EUZ9
-----END PGP SIGNATURE-----

--d72mf5zmy4eqf6ut--

