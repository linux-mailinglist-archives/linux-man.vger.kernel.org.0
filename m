Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 29003F9AD4
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2019 21:36:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726645AbfKLUgp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Nov 2019 15:36:45 -0500
Received: from mail-lj1-f179.google.com ([209.85.208.179]:40619 "EHLO
        mail-lj1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726388AbfKLUgp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Nov 2019 15:36:45 -0500
Received: by mail-lj1-f179.google.com with SMTP id q2so19371362ljg.7
        for <linux-man@vger.kernel.org>; Tue, 12 Nov 2019 12:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=oAbWQAyU2x4AiVDr0I9YKLl0MiMt9fefUvdfCrP3K+k=;
        b=TBas0ef4BMYp4DJtWmwikgZ9ZHBMp0gG3G2fWfEXDACoQCkhTk8EJvTWiUZHTnP79D
         LLvUs+KEpnjyfHe8aau+4sNvjavZi9AkpGjVveYdFgJDB+hCY0x1shBHZOOxgV0utCsM
         CiRoYxzh5ZHuBfseSnh8DBB0Oysrc2igKvlkseiR4KR9eK3zwFEPtcLJwOJs6P8ugGrZ
         S/TLqqlBp2uPZCyFtWBCCT8F3yTGjy/nAS4VPDVstQPEqHdMd45ZWA/fgYLa8cIA8CRt
         7pE6pjU9ynguMyE9LadpYo7xcLN8If9EOhqI4SGcPaLmthtrWtDPH8AOqCM+qOv6f2Pw
         jgfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=oAbWQAyU2x4AiVDr0I9YKLl0MiMt9fefUvdfCrP3K+k=;
        b=ZoABTYgksHxJoub8LLUzeqDxICqS/+A12+lxcX3hCbLT2dQboYIxACPDcb1AcmiRe+
         HnkJ9jrT8TtoYKjpiOXe2uubQisFsW9Wyd3eKyR8cqwLILeGSHC8lL1cQa8IKdDWr/5X
         u2GGyXUv2WA5PGaguQUbfqape4JCRHCoHHxIG40tq5joyX/cMSqahscun3Iq9JP1SrOd
         p+9FUPTYjPE+SBmMg/aFrU+1ZHgYvPGhxjxbwL9keruFoifJuIRQnnvQcV2finSGjBkg
         MuicTNHNdWzsOr9+O+D6WZNjVIybzLu7ChHBE7jaYOPcAdOc9GjEOddxLsTrXUsxo1HA
         Y48g==
X-Gm-Message-State: APjAAAUkuU9HzZJdm/gbajds5JCK+3ZYRmkhsljiiAdfslJR+ytdoPOl
        fdm0WbP5a8hEcwpUWnWt90HNWGy3pEEkh0dslRsqavZ1aD8=
X-Google-Smtp-Source: APXvYqzJjAlQzwa3lgJFPBqV171LOXfivVMEWo99z/muul9ncZGy4P3cwVAWZV8jkOOsgUhWAa5GEn50V5ScL+c/rpE=
X-Received: by 2002:a2e:9784:: with SMTP id y4mr21723590lji.77.1573591000858;
 Tue, 12 Nov 2019 12:36:40 -0800 (PST)
MIME-Version: 1.0
From:   enh <enh@google.com>
Date:   Tue, 12 Nov 2019 12:36:28 -0800
Message-ID: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
Subject: [PATCH] pthread_kill.3: Update to match POSIX.
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000a1657105972c3409"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000a1657105972c3409
Content-Type: text/plain; charset="UTF-8"

POSIX removed ESRCH years ago.

In resolving http://austingroupbugs.net/view.php?id=1214 it was made
clear that callers can't rely on using signal 0 to test for the
continued existence of a thread. Update the man page to make it clearer
that this doesn't generally work (even if it sometimes seems to).

See also the long explanation of why this is the case (and how to fix
your code) here:

https://android.googlesource.com/platform/bionic/+/master/docs/status.md#invalid-handling-targetsdkversion-o
---
 man3/pthread_kill.3 | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/man3/pthread_kill.3 b/man3/pthread_kill.3
index e70e2669e..fb27afd24 100644
--- a/man3/pthread_kill.3
+++ b/man3/pthread_kill.3
@@ -56,10 +56,6 @@ to
 a thread in the same process as the caller.
 The signal is asynchronously directed to
 .IR thread .
-.PP
-If
-.I sig
-is 0, then no signal is sent, but error checking is still performed.
 .SH RETURN VALUE
 On success,
 .BR pthread_kill ()
@@ -93,26 +89,23 @@ this action will affect the whole process.
 .PP
 The glibc implementation of
 .BR pthread_kill ()
-gives an error
-.RB ( EINVAL )
+gives the error
+.B EINVAL
 on attempts to send either of the real-time signals
 used internally by the NPTL threading implementation.
 See
 .BR nptl (7)
 for details.
 .PP
-POSIX.1-2008 recommends that if an implementation detects the use
-of a thread ID after the end of its lifetime,
+The glibc implementation of
 .BR pthread_kill ()
-should return the error
-.BR ESRCH .
-The glibc implementation returns this error in the cases where
-an invalid thread ID can be detected.
-But note also that POSIX says that an attempt to use a thread ID whose
-lifetime has ended produces undefined behavior,
-and an attempt to use an invalid thread ID in a call to
+tries to give the error
+.B ESRCH
+on attempts to use an invalid thread ID, but this isn't always possible.
+An attempt to use an invalid thread ID in a call to
 .BR pthread_kill ()
-can, for example, cause a segmentation fault.
+can, for example, cause a segmentation fault. Android is stricter, and will
+always abort when a pthread function is given an invalid thread ID.
 .SH SEE ALSO
 .BR kill (2),
 .BR sigaction (2),
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

--000000000000a1657105972c3409
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-pthread_kill.3-Update-to-match-POSIX.patch"
Content-Disposition: attachment; 
	filename="0001-pthread_kill.3-Update-to-match-POSIX.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k2wbfyig0>
X-Attachment-Id: f_k2wbfyig0

RnJvbSA2NTYyNDk3OTJkMTc4MmUyZDhjYTU4MTY2M2VlODhiMTkxODFiMDg0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFR1ZSwgMTIgTm92IDIwMTkgMTI6MTk6NTIgLTA4MDAKU3ViamVjdDogW1BBVENIXSBwdGhyZWFk
X2tpbGwuMzogVXBkYXRlIHRvIG1hdGNoIFBPU0lYLgoKUE9TSVggcmVtb3ZlZCBFU1JDSCB5ZWFy
cyBhZ28uCgpJbiByZXNvbHZpbmcgaHR0cDovL2F1c3Rpbmdyb3VwYnVncy5uZXQvdmlldy5waHA/
aWQ9MTIxNCBpdCB3YXMgbWFkZQpjbGVhciB0aGF0IGNhbGxlcnMgY2FuJ3QgcmVseSBvbiB1c2lu
ZyBzaWduYWwgMCB0byB0ZXN0IGZvciB0aGUKY29udGludWVkIGV4aXN0ZW5jZSBvZiBhIHRocmVh
ZC4gVXBkYXRlIHRoZSBtYW4gcGFnZSB0byBtYWtlIGl0IGNsZWFyZXIKdGhhdCB0aGlzIGRvZXNu
J3QgZ2VuZXJhbGx5IHdvcmsgKGV2ZW4gaWYgaXQgc29tZXRpbWVzIHNlZW1zIHRvKS4KClNlZSBh
bHNvIHRoZSBsb25nIGV4cGxhbmF0aW9uIG9mIHdoeSB0aGlzIGlzIHRoZSBjYXNlIChhbmQgaG93
IHRvIGZpeAp5b3VyIGNvZGUpIGhlcmU6CgpodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNv
bS9wbGF0Zm9ybS9iaW9uaWMvKy9tYXN0ZXIvZG9jcy9zdGF0dXMubWQjaW52YWxpZC1oYW5kbGlu
Zy10YXJnZXRzZGt2ZXJzaW9uLW8KLS0tCiBtYW4zL3B0aHJlYWRfa2lsbC4zIHwgMjUgKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbWFuMy9wdGhyZWFkX2tpbGwuMyBiL21hbjMvcHRo
cmVhZF9raWxsLjMKaW5kZXggZTcwZTI2NjllLi5mYjI3YWZkMjQgMTAwNjQ0Ci0tLSBhL21hbjMv
cHRocmVhZF9raWxsLjMKKysrIGIvbWFuMy9wdGhyZWFkX2tpbGwuMwpAQCAtNTYsMTAgKzU2LDYg
QEAgdG8KIGEgdGhyZWFkIGluIHRoZSBzYW1lIHByb2Nlc3MgYXMgdGhlIGNhbGxlci4KIFRoZSBz
aWduYWwgaXMgYXN5bmNocm9ub3VzbHkgZGlyZWN0ZWQgdG8KIC5JUiB0aHJlYWQgLgotLlBQCi1J
ZgotLkkgc2lnCi1pcyAwLCB0aGVuIG5vIHNpZ25hbCBpcyBzZW50LCBidXQgZXJyb3IgY2hlY2tp
bmcgaXMgc3RpbGwgcGVyZm9ybWVkLgogLlNIIFJFVFVSTiBWQUxVRQogT24gc3VjY2VzcywKIC5C
UiBwdGhyZWFkX2tpbGwgKCkKQEAgLTkzLDI2ICs4OSwyMyBAQCB0aGlzIGFjdGlvbiB3aWxsIGFm
ZmVjdCB0aGUgd2hvbGUgcHJvY2Vzcy4KIC5QUAogVGhlIGdsaWJjIGltcGxlbWVudGF0aW9uIG9m
CiAuQlIgcHRocmVhZF9raWxsICgpCi1naXZlcyBhbiBlcnJvcgotLlJCICggRUlOVkFMICkKK2dp
dmVzIHRoZSBlcnJvcgorLkIgRUlOVkFMCiBvbiBhdHRlbXB0cyB0byBzZW5kIGVpdGhlciBvZiB0
aGUgcmVhbC10aW1lIHNpZ25hbHMKIHVzZWQgaW50ZXJuYWxseSBieSB0aGUgTlBUTCB0aHJlYWRp
bmcgaW1wbGVtZW50YXRpb24uCiBTZWUKIC5CUiBucHRsICg3KQogZm9yIGRldGFpbHMuCiAuUFAK
LVBPU0lYLjEtMjAwOCByZWNvbW1lbmRzIHRoYXQgaWYgYW4gaW1wbGVtZW50YXRpb24gZGV0ZWN0
cyB0aGUgdXNlCi1vZiBhIHRocmVhZCBJRCBhZnRlciB0aGUgZW5kIG9mIGl0cyBsaWZldGltZSwK
K1RoZSBnbGliYyBpbXBsZW1lbnRhdGlvbiBvZgogLkJSIHB0aHJlYWRfa2lsbCAoKQotc2hvdWxk
IHJldHVybiB0aGUgZXJyb3IKLS5CUiBFU1JDSCAuCi1UaGUgZ2xpYmMgaW1wbGVtZW50YXRpb24g
cmV0dXJucyB0aGlzIGVycm9yIGluIHRoZSBjYXNlcyB3aGVyZQotYW4gaW52YWxpZCB0aHJlYWQg
SUQgY2FuIGJlIGRldGVjdGVkLgotQnV0IG5vdGUgYWxzbyB0aGF0IFBPU0lYIHNheXMgdGhhdCBh
biBhdHRlbXB0IHRvIHVzZSBhIHRocmVhZCBJRCB3aG9zZQotbGlmZXRpbWUgaGFzIGVuZGVkIHBy
b2R1Y2VzIHVuZGVmaW5lZCBiZWhhdmlvciwKLWFuZCBhbiBhdHRlbXB0IHRvIHVzZSBhbiBpbnZh
bGlkIHRocmVhZCBJRCBpbiBhIGNhbGwgdG8KK3RyaWVzIHRvIGdpdmUgdGhlIGVycm9yCisuQiBF
U1JDSAorb24gYXR0ZW1wdHMgdG8gdXNlIGFuIGludmFsaWQgdGhyZWFkIElELCBidXQgdGhpcyBp
c24ndCBhbHdheXMgcG9zc2libGUuCitBbiBhdHRlbXB0IHRvIHVzZSBhbiBpbnZhbGlkIHRocmVh
ZCBJRCBpbiBhIGNhbGwgdG8KIC5CUiBwdGhyZWFkX2tpbGwgKCkKLWNhbiwgZm9yIGV4YW1wbGUs
IGNhdXNlIGEgc2VnbWVudGF0aW9uIGZhdWx0LgorY2FuLCBmb3IgZXhhbXBsZSwgY2F1c2UgYSBz
ZWdtZW50YXRpb24gZmF1bHQuIEFuZHJvaWQgaXMgc3RyaWN0ZXIsIGFuZCB3aWxsCithbHdheXMg
YWJvcnQgd2hlbiBhIHB0aHJlYWQgZnVuY3Rpb24gaXMgZ2l2ZW4gYW4gaW52YWxpZCB0aHJlYWQg
SUQuCiAuU0ggU0VFIEFMU08KIC5CUiBraWxsICgyKSwKIC5CUiBzaWdhY3Rpb24gKDIpLAotLSAK
Mi4yNC4wLnJjMS4zNjMuZ2IxYmNjZDNlM2QtZ29vZwoK
--000000000000a1657105972c3409--
