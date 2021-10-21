Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31B6B435F1B
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 12:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbhJUKhz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Oct 2021 06:37:55 -0400
Received: from mout01.posteo.de ([185.67.36.65]:45571 "EHLO mout01.posteo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230314AbhJUKhz (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 21 Oct 2021 06:37:55 -0400
Received: from submission (posteo.de [89.146.220.130]) 
        by mout01.posteo.de (Postfix) with ESMTPS id F0852240027
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 12:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
        t=1634812538; bh=LE1H+JeUY4Znz2OyxLGEJxFC+s3hIq1KoOrp0kijOoc=;
        h=Subject:From:To:Cc:Date:From;
        b=S04uGr7YPLoDtpk/35esxHMfQnaV88zIqi6Xy6nMPcbqm6Q4tFb+BsXitr0QNggcg
         /u8CNW7cXWVH6s08Q2fSLTF9K0ODbGQOJk9lwffYwzfCvXm3PElt8BougI8hPmO/Rb
         jZ50HcRzymGkTKp5SJ8D/LdWQ3sQjthOIlgzXofE4TIlub4YfARgmKpUrxe007cY4S
         LEwg4xkkzVVtt7xQTZ+bMFhvzr1EyvnV4Wr7unnL4MZ3pzE3v/S1YcsuAEmh+NePfL
         +IOOnQiaYbKIphObW9acEQ9pkqv3N877I40YS4mNjU0Jma0O0EaN9iyMtRBDVmV8v4
         zFbW65a/8Vf/g==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4HZkQc6nccz9rxR;
        Thu, 21 Oct 2021 12:35:36 +0200 (CEST)
Message-ID: <ea8a0ab6dcff61735daaadff4f8fef2992a082b1.camel@posteo.net>
Subject: [PATCH] posix_memalign.3: drop obsolete requirement for
 aligned_alloc() usage
From:   John Scott <jscott@posteo.net>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Date:   Thu, 21 Oct 2021 10:35:29 +0000
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-qY+2CDLwsw+MBUkUIvmp"
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--=-qY+2CDLwsw+MBUkUIvmp
Content-Type: multipart/mixed; boundary="=-1jIngc/iyjJiLz5Uw0FK"


--=-1jIngc/iyjJiLz5Uw0FK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A C11 defect report changed the description of aligned_alloc() so that
it is no longer necessary for the allocation size to be a multiple of
the alignment. Although this isn't yet reflected in the GNU C Library
manual, I'm preparing a patch for them as well.

Here is the DR:
http://www.open-std.org/jtc1/sc22/wg14/www/docs/summary.htm#dr_460


--=-1jIngc/iyjJiLz5Uw0FK
Content-Description:
Content-Disposition: inline;
	filename*0=0001-posix_memalign.3-drop-obsolete-requirement-for-align.pat;
	filename*1=ch
Content-Type: text/x-patch;
	name="0001-posix_memalign.3-drop-obsolete-requirement-for-align.patch";
	charset="UTF-8"
Content-Transfer-Encoding: base64

RnJvbSA4OTU2MGJjOWFkODg3NTA0Y2Y1NTdkYjM1Nzk0NDFkMmQ4MzhhZmY2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKb2huIFNjb3R0IDxqc2NvdHRAcG9zdGVvLm5ldD4KRGF0ZTog
VGh1LCAyMSBPY3QgMjAyMSAwNDo1MzozOSAtMDQwMApTdWJqZWN0OiBbUEFUQ0hdIHBvc2l4X21l
bWFsaWduLjM6IGRyb3Agb2Jzb2xldGUgcmVxdWlyZW1lbnQgZm9yCiBhbGlnbmVkX2FsbG9jKCkg
dXNhZ2UKCkluIHRoZSBDMTEgc3RhbmRhcmQgYXMgcHVibGlzaGVkLCBpdCB3YXMgdW5kZWZpbmVk
IGJlaGF2aW9yCmlmIHRoZSBhbGxvY2F0aW9uIHNpemUgd2FzIG5vdCBhIG11bHRpcGxlIG9mIHRo
ZSBzeXN0ZW0KcGFnZSBzaXplLiBEZWZlY3QgUmVwb3J0IDQ2MCBjaGFuZ2VkIHRoZSByZWxldmFu
dCBzZW50ZW5jZSBmcm9tCiJUaGUgdmFsdWUgb2YgYWxpZ25tZW50IHNoYWxsIGJlIGEgdmFsaWQg
YWxpZ25tZW50IHN1cHBvcnRlZCBieSB0aGUKaW1wbGVtZW50YXRpb24gYW5kIHRoZSB2YWx1ZSBv
ZiBzaXplIHNoYWxsIGJlIGFuIGludGVncmFsIG11bHRpcGxlIG9mCmFsaWdubWVudC4iIHRvCiJJ
ZiB0aGUgdmFsdWUgb2YgYWxpZ25tZW50IGlzIG5vdCBhIHZhbGlkIGFsaWdubWVudCBzdXBwb3J0
ZWQKYnkgdGhlIGltcGxlbWVudGF0aW9uIHRoZSBmdW5jdGlvbiBzaGFsbCBmYWlsIGJ5IHJldHVy
bmluZyBhIG51bGwKcG9pbnRlciwiIGFuZCBoZW5jZSBkcm9wcGVkIHRoZSByZXF1aXJlbWVudC4K
ClRoaXMgaXMgc3VwcG9ydGVkIGluIHByYWN0aWNlOyBpbiB0aGUgR05VIEMgTGlicmFyeSwgYWxp
Z25lZF9hbGxvYygpCmlzIGltcGxlbWVudGVkIGFzIGFuIGFsaWFzIGZvciBtZW1hbGlnbigpLiBU
aGUgR05VIEMgTGlicmFyeSBtYW51YWwKc3RpbGwgZG9jdW1lbnRzIHRoZSBvYnNvbGV0ZSByZXF1
aXJlbWVudCBob3dldmVyLgotLS0KIG1hbjMvcG9zaXhfbWVtYWxpZ24uMyB8IDYgKy0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvbWFuMy9wb3NpeF9tZW1hbGlnbi4zIGIvbWFuMy9wb3NpeF9tZW1hbGlnbi4zCmluZGV4IDkz
MWVjMWMwNy4uOTM0ZmQyMmQxIDEwMDY0NAotLS0gYS9tYW4zL3Bvc2l4X21lbWFsaWduLjMKKysr
IGIvbWFuMy9wb3NpeF9tZW1hbGlnbi4zCkBAIC0xMDQsMTEgKzEwNCw3IEBAIHdoaWNoIG11c3Qg
YmUgYSBwb3dlciBvZiB0d28uCiBUaGUgZnVuY3Rpb24KIC5CUiBhbGlnbmVkX2FsbG9jICgpCiBp
cyB0aGUgc2FtZSBhcwotLkJSIG1lbWFsaWduICgpLAotZXhjZXB0IGZvciB0aGUgYWRkZWQgcmVz
dHJpY3Rpb24gdGhhdAotLkkgc2l6ZQotc2hvdWxkIGJlIGEgbXVsdGlwbGUgb2YKLS5JUiBhbGln
bm1lbnQgLgorLkJSIG1lbWFsaWduICgpIC4KIC5QUAogVGhlIG9ic29sZXRlIGZ1bmN0aW9uCiAu
QlIgdmFsbG9jICgpCi0tIAoyLjMzLjAKCg==


--=-1jIngc/iyjJiLz5Uw0FK--

--=-qY+2CDLwsw+MBUkUIvmp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iIgEABYIADAWIQT287WtmxUhmhucNnhyvHFIwKstpwUCYXFCcRIcanNjb3R0QHBv
c3Rlby5uZXQACgkQcrxxSMCrLaeLzgD+PV9cM4JAqBnXgKON/XJwa4EMj6bQw66p
ewtgMNqQBDMBAMc18sAVFcaBVkfgbai5j4tetYsO8ENjtgHbHywJx8sD
=Nhyi
-----END PGP SIGNATURE-----

--=-qY+2CDLwsw+MBUkUIvmp--
