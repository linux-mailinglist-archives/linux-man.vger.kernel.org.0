Return-Path: <linux-man+bounces-476-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F20862A50
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 13:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF3EA1C209B7
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 12:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB8C10A0C;
	Sun, 25 Feb 2024 12:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mp3gqR/o"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AEFDDDA
	for <linux-man@vger.kernel.org>; Sun, 25 Feb 2024 12:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708863805; cv=none; b=iCT8oFp1vLiuDz9n65JKy7fywmfL8tFRrl2n3SqbC+FG7NSQ5tuTm+hrSESlEH159zLUgUnWEGiVAiGD66cxANNO7pjQGuyY/tS1MJEsWb3euXQcxH07RJdtNJHG1S7Msx1ESQOIy7tykUH1TR1UOCJDHeMERDXCyNiY5ib5KcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708863805; c=relaxed/simple;
	bh=pC3GMgItxoZR6NsA/Z13Y/1De5behENTKwxaqTJUVS4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SE3WSTM3yZUGJzQOMsKj6fzlZUbM4CKgvHKM1DmcstIb03elGdVmfis8mLFprdV6IWng/JncCi0BNFgxSDb7Va3Li2lLDbvBI9T0Ee2xe5ZIAGqEoBJSm1anNNVbkP2fQksLyR1/tuoCKotTIRQ5/YATC1Q4KfjidG8wbOkuZY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mp3gqR/o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9DABC433C7;
	Sun, 25 Feb 2024 12:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708863804;
	bh=pC3GMgItxoZR6NsA/Z13Y/1De5behENTKwxaqTJUVS4=;
	h=Date:From:To:Cc:Subject:From;
	b=mp3gqR/o+xWPptpuSjEy8uEGLkm8oBSIP7GvGYNZiVWpK4IciYzPbB52pCQIK5LuG
	 8xOYW5ASVIL31PXmQmhT+nGltY355sF0HME/HZYAFHB/AGqsJZUB2S/s2gQDWqYQLi
	 MU5G+/7vpst70f/1UwcKM9NqYIwhEmRJ1JGryxgfQZiVanspYGyUkvrQaYncI2n0yG
	 wMq5/eSlymZ/MXzQZQMNOtSXPXS3oFqzdGP98tTYvoPP5kbq/T/D8iiZ5GBQnC4huq
	 r04rCHIww6OiJKKue1/V3aY0uQ0vj8zNhm8NRPX35SfO4CP2MnfyuP/GUkn0vO7iOl
	 SGsRIp4pn8Whw==
Date: Sun, 25 Feb 2024 13:23:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Florian Weimer <fweimer@redhat.com>, Carlos O'Donell <carlos@redhat.com>
Subject: [PATCH 1/2] process_madvise.2: Document the glibc wrapper
Message-ID: <20240225122250.441157-2-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pimtgjb5l62esthg"
Content-Disposition: inline


--pimtgjb5l62esthg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 1/2] process_madvise.2: Document the glibc wrapper
MIME-Version: 1.0

$ grepc -n process_madvise /usr/include/
/usr/include/x86_64-linux-gnu/bits/mman_ext.h:25:
extern __ssize_t process_madvise (int __pid_fd, const struct iovec *__iov,
				  size_t __count, int __advice,
				  unsigned __flags)
  __THROW;

Reported-by: Florian Weimer <fweimer@redhat.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man2/process_madvise.2 | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index 53fd57598..ed8739663 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -13,23 +13,12 @@ .SH LIBRARY
 .RI ( libc ", " \-lc )
 .SH SYNOPSIS
 .nf
-.BR "#include <sys/mman.h>" "      /* Definition of " MADV_* " constants *=
/"
-.BR "#include <sys/syscall.h>" "   /* Definition of " SYS_* " constants */"
-.BR "#include <sys/uio.h>" "       /* Definition of " "struct iovec" " typ=
e */"
-.B #include <unistd.h>
+.B #include <sys/mman.h>
 .P
-.BI "ssize_t syscall(SYS_process_madvise, int " pidfd ,
-.BI "                const struct iovec *" iovec ", size_t " vlen \
-", int " advice ,
-.BI "                unsigned int " flags ");"
+.BI "ssize_t process_madvise(int " pidfd ", const struct iovec *" iovec ,
+.BI "                        size_t " vlen ", int " advice \
+", unsigned int " flags );
 .fi
-.P
-.IR Note :
-glibc provides no wrapper for
-.BR process_madvise (),
-necessitating the use of
-.BR syscall (2).
-.\" FIXME: See <https://sourceware.org/bugzilla/show_bug.cgi?id=3D27380>
 .SH DESCRIPTION
 The
 .BR process_madvise ()
@@ -187,6 +176,7 @@ .SH STANDARDS
 Linux.
 .SH HISTORY
 Linux 5.10.
+glibc 2.36.
 .\" commit ecb8ac8b1f146915aa6b96449b66dd48984caacc
 .P
 Support for this system call is optional,
--=20
2.43.0


--pimtgjb5l62esthg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXbMTkACgkQnowa+77/
2zJseg/+O/OW7G0ZHz0DxeroobIs/wj8BfXnQLSBOAorpDlf9YcVYnc3AL0Egui1
gtVhzuVqxq20yDdFbooN/7Zj/KKPqemJ/3Jef+Yc1UiZ4vbRDw0CghVsIrWVnT8G
HsIBCkHMWGnfY02/Xl0DhsgY1L6ZlZ0UGMeLEaezMWH0B8P2faCFTcEs6ieUbgiW
7LSBoSlLWs4C90xFvFEy6o6RuMeAdHBhgWVypdZ5okM9H3FqNtHK0ACeMAbIrgzZ
jTkTF6sBUHjvh8+3C3AS9h0vxV79tf6BocX5RvkBTjpxUYsVLuKB0kRUfY728nBe
nVKKwludIfCufPQH/O/aqyZsqoQAmysSYxMp2dEa1YGZ14Q9GiGukvq0BQ4t/wX0
tZ1UqtxkX/xZdR37Y6duE2E6Im8ugV9cwJcVqF1GZL3Uk1x2olsEeSIKWPjdI0P9
24JgfH+epaLdPnm182m7GlTAhA8q3RkG/tL1e7vhlHee4a1e5UbGRV0fsqH54dN3
MLDtI03wIEf11U8AIYJb5qFJd2jTU6S5NGW7vy+VoGS+IGK/7PxOmUZngjAJGnfw
p5kT80QLvUIqJPhkNLmnil1D8bAWwQMjWDFkPUsb/Tmtka0nVXzv9DQXc9mUKeL0
5EHgdJ8q3y9PygfzMNOZWK5ErAdR9EcegVUJEdYPlmFEA3zreDo=
=+hu1
-----END PGP SIGNATURE-----

--pimtgjb5l62esthg--

