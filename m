Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9B1BFA1FC5
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2019 17:51:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727860AbfH2Put (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Aug 2019 11:50:49 -0400
Received: from mx1.redhat.com ([209.132.183.28]:58612 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728158AbfH2Pus (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 29 Aug 2019 11:50:48 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 9E1E312E5;
        Thu, 29 Aug 2019 15:50:47 +0000 (UTC)
Received: from [10.3.116.234] (ovpn-116-234.phx2.redhat.com [10.3.116.234])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 3304A19C4F;
        Thu, 29 Aug 2019 15:50:47 +0000 (UTC)
To:     glibc list <libc-alpha@sourceware.org>, mtk.manpages@gmail.com
From:   Eric Blake <eblake@redhat.com>
Subject: f_owner_ex vs. POSIX
Openpgp: preference=signencrypt
Autocrypt: addr=eblake@redhat.com; keydata=
 xsBNBEvHyWwBCACw7DwsQIh0kAbUXyqhfiKAKOTVu6OiMGffw2w90Ggrp4bdVKmCaEXlrVLU
 xphBM8mb+wsFkU+pq9YR621WXo9REYVIl0FxKeQo9dyQBZ/XvmUMka4NOmHtFg74nvkpJFCD
 TUNzmqfcjdKhfFV0d7P/ixKQeZr2WP1xMcjmAQY5YvQ2lUoHP43m8TtpB1LkjyYBCodd+LkV
 GmCx2Bop1LSblbvbrOm2bKpZdBPjncRNob73eTpIXEutvEaHH72LzpzksfcKM+M18cyRH+nP
 sAd98xIbVjm3Jm4k4d5oQyE2HwOur+trk2EcxTgdp17QapuWPwMfhaNq3runaX7x34zhABEB
 AAHNHkVyaWMgQmxha2UgPGVibGFrZUByZWRoYXQuY29tPsLAegQTAQgAJAIbAwULCQgHAwUV
 CgkICwUWAgMBAAIeAQIXgAUCS8fL9QIZAQAKCRCnoWtKJSdDahBHCACbl/5FGkUqJ89GAjeX
 RjpAeJtdKhujir0iS4CMSIng7fCiGZ0fNJCpL5RpViSo03Q7l37ss+No+dJI8KtAp6ID+PMz
 wTJe5Egtv/KGUKSDvOLYJ9WIIbftEObekP+GBpWP2+KbpADsc7EsNd70sYxExD3liwVJYqLc
 Rw7so1PEIFp+Ni9A1DrBR5NaJBnno2PHzHPTS9nmZVYm/4I32qkLXOcdX0XElO8VPDoVobG6
 gELf4v/vIImdmxLh/w5WctUpBhWWIfQDvSOW2VZDOihm7pzhQodr3QP/GDLfpK6wI7exeu3P
 pfPtqwa06s1pae3ad13mZGzkBdNKs1HEm8x6zsBNBEvHyWwBCADGkMFzFjmmyqAEn5D+Mt4P
 zPdO8NatsDw8Qit3Rmzu+kUygxyYbz52ZO40WUu7EgQ5kDTOeRPnTOd7awWDQcl1gGBXgrkR
 pAlQ0l0ReO57Q0eglFydLMi5bkwYhfY+TwDPMh3aOP5qBXkm4qIYSsxb8A+i00P72AqFb9Q7
 3weG/flxSPApLYQE5qWGSXjOkXJv42NGS6o6gd4RmD6Ap5e8ACo1lSMPfTpGzXlt4aRkBfvb
 NCfNsQikLZzFYDLbQgKBA33BDeV6vNJ9Cj0SgEGOkYyed4I6AbU0kIy1hHAm1r6+sAnEdIKj
 cHi3xWH/UPrZW5flM8Kqo14OTDkI9EtlABEBAAHCwF8EGAEIAAkFAkvHyWwCGwwACgkQp6Fr
 SiUnQ2q03wgAmRFGDeXzc58NX0NrDijUu0zx3Lns/qZ9VrkSWbNZBFjpWKaeL1fdVeE4TDGm
 I5mRRIsStjQzc2R9b+2VBUhlAqY1nAiBDv0Qnt+9cLiuEICeUwlyl42YdwpmY0ELcy5+u6wz
 mK/jxrYOpzXKDwLq5k4X+hmGuSNWWAN3gHiJqmJZPkhFPUIozZUCeEc76pS/IUN72NfprZmF
 Dp6/QDjDFtfS39bHSWXKVZUbqaMPqlj/z6Ugk027/3GUjHHr8WkeL1ezWepYDY7WSoXwfoAL
 2UXYsMAr/uUncSKlfjvArhsej0S4zbqim2ZY6S8aRWw94J3bSvJR+Nwbs34GPTD4Pg==
Organization: Red Hat, Inc.
Cc:     linux-man@vger.kernel.org
Message-ID: <a6d65cee-a909-449c-484d-66cd26093958@redhat.com>
Date:   Thu, 29 Aug 2019 10:50:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="GaE4FxL05iyL7iVw5byzf3Xs8NwAZ8AfQ"
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Thu, 29 Aug 2019 15:50:47 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--GaE4FxL05iyL7iVw5byzf3Xs8NwAZ8AfQ
Content-Type: multipart/mixed; boundary="9Cu5yXyn8pRAKVttOffoue2HjFtl8K3NE";
 protected-headers="v1"
From: Eric Blake <eblake@redhat.com>
To: glibc list <libc-alpha@sourceware.org>, mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Message-ID: <a6d65cee-a909-449c-484d-66cd26093958@redhat.com>
Subject: f_owner_ex vs. POSIX

--9Cu5yXyn8pRAKVttOffoue2HjFtl8K3NE
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

The Austin Group is considering standardizing a subset of the Linux
fcntl(F_GETOWN_EX), because of its ability to overcome the limitation
that fcntl(F_GETOWN) must fail for some valid pids if pid_t is permitted
to be wider than int (whether or not Linux ever reaches a point where
pid_t is wider than int, POSIX did not want to make that restriction on
other implementations).  See http://austingroupbugs.net/view.php?id=3D127=
4

However, we've run into a minor issue which implies that man-pages
and/or glibc is buggy:

The man page for fcntl() (as of Fedora 30 man-pages-4.16-4.fc30) states:

                  struct f_owner_ex {
                      int   type;
                      pid_t pid;
                  };

but in the headers under /usr/include, there are two different
definitions, which raises the question on what the real type of 'type'
should be:

/usr/include/asm-generic/fcntl.h (from kernel-headers-5.2.9-200.fc30):
struct f_owner_ex {
        int     type;
        __kernel_pid_t  pid;
};

/usr/include/bits/fcntl-linux.h (from glibc-headers-2.29-15.fc30):

struct f_owner_ex
  {
    enum __pid_type type;       /* Owner type of ID.  */
    __pid_t pid;                /* ID of owner.  */
  };


Note that an enum instead of an int matters as to whether this will
complain when compiled:
struct f_owner_ex s;
int *foo =3D &s.type;

Therefore, we want to confirm whether requiring the eventual POSIX
definition to use enum f_pid_type (as currently worded in
austingroupbugs.net/view.php?id=3D1274#c4536) is okay (in which case,
there is a bug in the man page for documenting int instead of enum
f_pid_type), or if POSIX should not bother defining enum f_pid_type (and
instead just provide F_OWNER_PID and F_OWNER_PGRP as macros) with
f_owner_ex being defined with an int (in which case, the glibc <fcntl.h>
header needs a change to use int, and the Austin Group proposal needs to
be tweaked to match).

Note that the use of an enum in a public struct makes that struct
dependent on ABI issues (if the library is compiled with one set of
compiler flags where enums occupy the space of 'int', but an application
compiles with a different set of flags where an enum occupies only the
space of 'char', this could result in the application being unable to
correctly call into libc), if that helps sway the decision on which of
the two projects needs to change.  However, the exact layout of the
struct and any padding space was not deemed to be a showstopper (that
is, similar to struct stat, the standard intends only to require that at
least two members be present in f_owner_ex without any further
restrictions on what layout those two members occupy).

A side note was also raised during discussion: POSIX already
standardizes the type idtype_t for use in waitid(), and on Linux, we
happen to have P_PID=3D=3DF_OWNER_PID=3D=3D1 and P_PGID=3D=3DF_OWNER_PGRP=
=3D=3D2 (which
are the only values that POSIX is considering adding), which on the
surface looks like unnecessary duplication.  So at one point, the
question was raised whether POSIX should reuse the existing idtype_t
instead of inventing something new for f_owner_ex.  However, it was then
pointed out that idtype_t also includes P_ALL (which on Linux is 0), and
that Linux uses F_OWNER_TID=3D=3D0 as an extension to what POSIX would
require, but since Linux' F_OWNER_TID semantics for F_SETOWN_EX are not
the same semantics as P_ALL in waitid(); furthermore, <fcntl.h> has free
reign to add more F_* into the namespace but not P_*, where reuse of the
idtype_t type would then require dragging in the <sys/wait.h> header
just to populate f_owner_ex.  Thus, this reuse of types was deemed
unpalatable.

--=20
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3226
Virtualization:  qemu.org | libvirt.org


--9Cu5yXyn8pRAKVttOffoue2HjFtl8K3NE--

--GaE4FxL05iyL7iVw5byzf3Xs8NwAZ8AfQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEccLMIrHEYCkn0vOqp6FrSiUnQ2oFAl1n9FYACgkQp6FrSiUn
Q2oVzAf/XxCgyErm64uRPNq13UadZkJC3jE/zQj+s/NRxTx8bSLV/zGvEt1Hoqo2
FUrfgEVVPMoIWk+s3DvxdzF09zHo0HhdRA6f2pJ16v9fSBsyx2xWS1YUQSVDFMlU
sdB1xpaN9HMLb7MZ1XSLWRUT+viK6MLwwvPrAnODFM+mLsvxIWQ1OnZd5ZYI3bLl
RdBNi5qwIFwWnYEF6X438sHG/LutzRlxQhrALWTd7bLuUdC9ZoM1IKo+xOqHcjEd
0AiYsYC+9BQEQnYyMNVmS9qhvbNUxh74tXNa347GCDcyabHCnsDZ7YBFwd/phJn5
HwusvkmijqKUqHQjF7HwhBZLq2D0XQ==
=r5i3
-----END PGP SIGNATURE-----

--GaE4FxL05iyL7iVw5byzf3Xs8NwAZ8AfQ--
