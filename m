Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 438441B869A
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2020 14:52:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726062AbgDYMww (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Apr 2020 08:52:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726060AbgDYMww (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Apr 2020 08:52:52 -0400
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com [IPv6:2607:f8b0:4864:20::a41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F91FC09B04B
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2020 05:52:52 -0700 (PDT)
Received: by mail-vk1-xa41.google.com with SMTP id q200so3488168vka.13
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2020 05:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=sIRJT+uZxcGBtX3sWPTIhbhO870APE7KIFhHNS8IM0w=;
        b=ktIq/v6eY/CdNBeS73dGZqOlcxV72E4+naBFK6dgk7RqKpjBIPHVvQj4OnaHVa7J4s
         ZXRfyuqEkBjgz1i0eamu1NWO5CUaNYQ7iJWJeuqiLYAFC90mnElDLRZTQwjI1lmgl5Ae
         lVDxC1om1HvJfU71MoZdWgyoAHMP0U1aTTht2ueudIWCtCAp7YGtbONdx7b0wQyQv76d
         YNB7RiJ5GtKWc/VUYLIeXmzuuHd3ef0nUoShZNNLgVyFBw+qKYaUdwmjQwK5vTEPaLFV
         4kvsknLrzqcIUVlqbFEyPN+Na8ti3F7bulS1nFbZ8gM8yUNR99BnoBoYvuJbQVfjw5Xt
         5Kaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=sIRJT+uZxcGBtX3sWPTIhbhO870APE7KIFhHNS8IM0w=;
        b=h0gbxHpVsPWoHLDQxcjKAWqJHl0hHbV0qFvOsCpsrA0hL5I8VyANtxQnSQhFkSTMvB
         mvaEGHBq5xVehfIG4yyo/d3+/Lf4+nP4T+I9XU13iwkq1+8xKwUUnJy8RzubYOKEluvg
         wNqyyeJRPgik8q3Ua6FSYeb3qsDWWMZmkGKayT1alpQPqosJ3rzoje/ZreEXxxTGGbs6
         3s9ef1loInKNWfYLqeBRuQCawOx/00x6nFDlwCSYxB1bn4pZ1dm6y96zh0p9Oy+uFsoW
         obyRnEfkygEAkfX3/aC3twcUTfevOxTpGtYXjsvR91UD2wYz0tkMbAovT1tPSzg9vSB3
         +p6w==
X-Gm-Message-State: AGi0PuZKXPp5TPVKHj9e1GtuGx9JkBa4InvLZTR6brAPl1+UbkZF1wpm
        B2jdpLYjHfUPcjAOcCgWyyNt1uwf+uwuh9Hh1WA=
X-Google-Smtp-Source: APiQypKLsRPQur7WSC77unDH/mkO102qD8o80d/XamD3OMfR64KCJzY3Azl5QhCbL5Q1Fl6zv/UJwZWlxtMVeiV7Z+8=
X-Received: by 2002:a05:6122:2c8:: with SMTP id k8mr11354824vki.2.1587819171233;
 Sat, 25 Apr 2020 05:52:51 -0700 (PDT)
MIME-Version: 1.0
From:   Marcin Stolarek <stolarek.marcin@gmail.com>
Date:   Sat, 25 Apr 2020 14:52:39 +0200
Message-ID: <CAC8K6BNGULq_XQCWJz2ZiDr1xN+3_eD1jnO1x2f9Kw0nV5=5bw@mail.gmail.com>
Subject: [patch] strtok.3 add note about glibc-2.25+ segfault for call like strtok_r(NULL,"|",NULL)
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, wdijkstr@arm.com
Content-Type: multipart/mixed; boundary="000000000000ab8e4805a41cf5b3"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000ab8e4805a41cf5b3
Content-Type: text/plain; charset="UTF-8"

The change in glibc commit d58ab810a6e325cc351684d174c48cabce01bcc1
(author in CC):

From commit description:"[...] Also avoid an unnecessary call to
strcspn after the last token by adding an early exit for an empty
string.[...]"

Important code change:
/* Parse S into tokens separated by characters in DELIM.
@@ -45,11 +41,17 @@
 char *
 __strtok_r (char *s, const char *delim, char **save_ptr)
 {
-  char *token;
+  char *end;

   if (s == NULL)
     s = *save_ptr;

+  if (*s == '\0')
+    {
+      *save_ptr = s;
+      return NULL;
+    }
+

may result in the mentioned segmentation fault if the char *str passed
to strtok_r is a NULL (for 1st call).

Checked glibc versions:
~/git-repos/glibc:release/2.25/master$ git tag
--contain=d58ab810a6e325cc351684d174c48cabce01bcc1
changelog-ends-here
glibc-2.25
glibc-2.25.90
glibc-2.26
glibc-2.26.9000
glibc-2.27
glibc-2.27.9000
glibc-2.28
glibc-2.28.9000
glibc-2.29
glibc-2.29.9000
glibc-2.30
glibc-2.30.9000
glibc-2.31
glibc-2.31.9000

cheers,
Marcin

--000000000000ab8e4805a41cf5b3
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-Add-note-about-strtok_r-change-in-glibc-2.25.patch"
Content-Disposition: attachment; 
	filename="0001-Add-note-about-strtok_r-change-in-glibc-2.25.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k9fmi8i20>
X-Attachment-Id: f_k9fmi8i20

RnJvbSBjZGJlOWRhZmZkYjM2NDAwYzIzYTFjYjQ3YWNkNzI1MmQyYWQ0MzRhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJjaW4gU3RvbGFyZWsgPHN0b2xhcmVrLm1hcmNpbkBnbWFp
bC5jb20+CkRhdGU6IFNhdCwgMjUgQXByIDIwMjAgMTQ6NDE6MjQgKzAyMDAKU3ViamVjdDogW1BB
VENIIDEvMV0gQWRkIG5vdGUgYWJvdXQgc3RydG9rX3IoKSBjaGFuZ2UgaW4gZ2xpYmMtMi4yNQoK
Q2FsbGluZyBzdHJ0b2soTlVMTCwnLCcsTlVMTCkgYWZ0ZXIgZDU4YWI4MTBhNmUzMjVjYzM1MTY4
NGQxNzRjNDhjYWJjZTAxYmNjMQp3aWxsIHJlc3VsdCBpbiBOVUxMIHBvaW50ZXIgZGVyZWZlcmVu
Y2UuCi0tLQogbWFuMy9zdHJ0b2suMyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9tYW4zL3N0cnRvay4zIGIvbWFuMy9zdHJ0b2suMwppbmRl
eCA5MzNhN2I5NmMuLjg3NTRhMDIxNiAxMDA2NDQKLS0tIGEvbWFuMy9zdHJ0b2suMworKysgYi9t
YW4zL3N0cnRvay4zCkBAIC0xOTcsNiArMTk3LDExIEBAIGlzIHJlcXVpcmVkIHRvIGJlIE5VTEwg
b24gdGhlIGZpcnN0IGNhbGwgdG8KIC5CUiBzdHJ0b2tfciAoKQogdGhhdCBpcyBiZWluZyB1c2Vk
IHRvIHBhcnNlCiAuSVIgc3RyIC4KKy5cIiBnbGliYy0yLjI1IGQ1OGFiODEwYTZlMzI1Y2MzNTE2
ODRkMTc0YzQ4Y2FiY2UwMWJjYzEKK1NpbmNlIGdsaWJjLTIuMjUgdXNpbmcKKy5CUiBzdHJ0b2tf
ciAoKQord2l0aCBzdHIgc2V0IHRvIE5VTEwgKGZvciB0aGUgMXN0IGNhbGwpIGlzIG5vdCBhbGxv
d2VkIGFuZCBtYXkgcmVzdWx0IGluCitzZWdtZW50YXRpb24gZmF1bHQuCiAuU0ggQlVHUwogQmUg
Y2F1dGlvdXMgd2hlbiB1c2luZyB0aGVzZSBmdW5jdGlvbnMuCiBJZiB5b3UgZG8gdXNlIHRoZW0s
IG5vdGUgdGhhdDoKLS0gCjIuMTcuMQoK
--000000000000ab8e4805a41cf5b3--
