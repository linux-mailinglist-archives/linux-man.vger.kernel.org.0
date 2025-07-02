Return-Path: <linux-man+bounces-3237-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF74EAF5F64
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 19:04:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6466E4462FA
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 17:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7263B2F50A6;
	Wed,  2 Jul 2025 17:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="BeMBuk9w"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D693A289E14
	for <linux-man@vger.kernel.org>; Wed,  2 Jul 2025 17:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751475872; cv=none; b=X3Krtst1xr1fqkshq1s5Nat4xQjBOiAkSnjkmtd33wdUWWv4fyiRzxzI7mrV0VVG1ae2OEKvLSOAAX7DibrpWmmzFU0exw4GaIr4AJxF9Xl5aNAfkHENczeL6uEp125NA0sokgDRPH9qxGD92/BrP5S6T1XdMT2e/0d8YnqCr/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751475872; c=relaxed/simple;
	bh=sGA7SvYTabY/bW/5DolKKGoH9IDQis4sj/kLPHE48mE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=bmbjxqxceIhBpS06pgylBSQs4atbJ3is03cWKPfGcKMK87EJrw/235lhCkHsnMdFwRCJlGr16zUry5q4EzAaAdzpIMJnsB+W1DpKFREyLxnGMgXMQu7ln45YTnXw/IFlGuVCSG/M0VA447SFCqEhPq/Qb5HybqDC90dh3Moyo6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=BeMBuk9w; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-23c76ed4a7fso4738995ad.1
        for <linux-man@vger.kernel.org>; Wed, 02 Jul 2025 10:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1751475870; x=1752080670; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4ih9hTW0vvQMfHw9fIyo9CahNGQZ85ZTEcicTl2EZhQ=;
        b=BeMBuk9wLLPoGivGZA+O/sjtrRwRzMLql4yTvJB52ilH5JaNlZBJ58fpaA+b1GTbqK
         IJ0+G6F3aJOvw/8pOPSOuYSvL5JH7LXHobpN+oM5QQB8wJq4m/eFzFeUtjO0pw8pLA0q
         R6PFl9lk+eFfqFR1TvePbroK/S7D+vmM856/li75QpflX/SEMbuVwhYYwPPXaX5vhV7l
         JKfOfZ33NBCkutyCGOD0RbPhnfrEbhmI0SKuD0Eu94SokgcSnPJlmo7C1zKMEJClzJPD
         MTX0Y8FESGjMpf6ELsGgZJ4A22J2kCxNCqUIaJuc4Y2f9rOG0jdgEaqm5I3zZcE6PI3D
         eTQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751475870; x=1752080670;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4ih9hTW0vvQMfHw9fIyo9CahNGQZ85ZTEcicTl2EZhQ=;
        b=iq+NUVQa0Z9sa6gh52aRVJjnzVkKJ0IqbH6sAhhGENMFbFaEO6WGy1Ue7+ymDUWXdj
         /7inbzglvQnpaNseLBiJp9sLxYva8vmsyyOdE+9SIXMiib50jjkhNTqJb7di7wriCoY/
         oHAYBRyGELYNNcEKPbNey/fcQXSP104I9pHo1bo9LADiexEoPvYuwtna+LEM54QEPaLt
         pGyQRLIn5KrSX5rIf34ZVjWWwHGorgfK36pd4DhbF53+ByhvDv9n/p4U1xK5Ozw5TiRh
         NovLITSEZsC7kt1ibh37cFxnNySDuSwrM0mZlXpfcF6d9TSqjjkEA8pQouwkd/f9+Nfb
         0j+g==
X-Gm-Message-State: AOJu0YyrEOkSNMtEMdaRWRZfXloaZExxFO5B1YfRn7T4fW7CDf7h7luM
	KHrz32YXE0rLmcoj7VwpHiaapig3Y2hX1aRDvdRdcc+si2yp9+tayUAx8TIpuY9VqwG5B//i0R6
	ZwMEN8ZufKxs4s1G2oq6//TaX5ry4FbPHZPIbrniLbJNPfHAvnVxJdpLcRjc=
X-Gm-Gg: ASbGnctP51yg87jsx3VX4S4oqt/lw/gjiX3w6tnJkmHLWQ6D4UIRT6zGVTCU+fKIdKd
	sNqHDqVt0hJrNnqE0RAtDneCkpPHq8+H3vSEnq4KCv6ALOBrduQ9YtWUUAzf6zcCAy8w8/oxENh
	mCeFpOv5CSkvSHm7liesSB17X3g95hgu7zkwWeskboKW51iEhVwRs=
X-Google-Smtp-Source: AGHT+IGz+wivRcI16rz6g2J2NWXhhQ74f257CwNc5OuqM0pj2rOIM8xh71njYyZxnOd2nC7YQAMyxypK9Nxyf1+g6I4=
X-Received: by 2002:a17:903:32c5:b0:235:f3e6:4680 with SMTP id
 d9443c01a7336-23c6e491221mr64108795ad.21.1751475869472; Wed, 02 Jul 2025
 10:04:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Wed, 2 Jul 2025 13:04:15 -0400
X-Gm-Features: Ac12FXx6zDuvXkLsFQbtpWxm0nYkaqA2KnROaeXkn0-DtX3IBy8Rir-SFM5gSj0
Message-ID: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
Subject: [PATCH] wcpncpy.3: fix incorrect return value.
To: linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="00000000000009ced50638f541b5"

--00000000000009ced50638f541b5
Content-Type: text/plain; charset="UTF-8"

---
 man/man3/wcpncpy.3 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man/man3/wcpncpy.3 b/man/man3/wcpncpy.3
index 636c1cdac..b1752ab52 100644
--- a/man/man3/wcpncpy.3
+++ b/man/man3/wcpncpy.3
@@ -79,8 +79,12 @@ .SH DESCRIPTION
 .IR dest .
 .SH RETURN VALUE
 .BR wcpncpy ()
-returns a pointer to the last wide character written, that is,
-.IR dest + n \-1.
+returns a pointer to the end of the wide-character string
+.IR dest ,
+that is, a pointer to the first terminating null wide character
+if any were written, or a pointer to
+.IR dest[n]
+if no null wide character was written.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.50.0.727.gbf7dc18ff4-goog

--00000000000009ced50638f541b5
Content-Type: application/octet-stream; 
	name="0001-wcpncpy.3-fix-incorrect-return-value.patch"
Content-Disposition: attachment; 
	filename="0001-wcpncpy.3-fix-incorrect-return-value.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_mcm7hul40>
X-Attachment-Id: f_mcm7hul40

RnJvbSA0ZGJlOTJiMmUyMzk0ODc2NzM5Y2RmZDNjNzIxMDJkNWE3ZmIyNGNiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFdlZCwgMiBKdWwgMjAyNSAxNzowMTozOSArMDAwMApTdWJqZWN0OiBbUEFUQ0hdIHdjcG5jcHku
MzogZml4IGluY29ycmVjdCByZXR1cm4gdmFsdWUuCgotLS0KIG1hbi9tYW4zL3djcG5jcHkuMyB8
IDggKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvbWFuL21hbjMvd2NwbmNweS4zIGIvbWFuL21hbjMvd2NwbmNweS4z
CmluZGV4IDYzNmMxY2RhYy4uYjE3NTJhYjUyIDEwMDY0NAotLS0gYS9tYW4vbWFuMy93Y3BuY3B5
LjMKKysrIGIvbWFuL21hbjMvd2NwbmNweS4zCkBAIC03OSw4ICs3OSwxMiBAQCAuU0ggREVTQ1JJ
UFRJT04KIC5JUiBkZXN0IC4KIC5TSCBSRVRVUk4gVkFMVUUKIC5CUiB3Y3BuY3B5ICgpCi1yZXR1
cm5zIGEgcG9pbnRlciB0byB0aGUgbGFzdCB3aWRlIGNoYXJhY3RlciB3cml0dGVuLCB0aGF0IGlz
LAotLklSIGRlc3QgKyBuIFwtMS4KK3JldHVybnMgYSBwb2ludGVyIHRvIHRoZSBlbmQgb2YgdGhl
IHdpZGUtY2hhcmFjdGVyIHN0cmluZworLklSIGRlc3QgLAordGhhdCBpcywgYSBwb2ludGVyIHRv
IHRoZSBmaXJzdCB0ZXJtaW5hdGluZyBudWxsIHdpZGUgY2hhcmFjdGVyCitpZiBhbnkgd2VyZSB3
cml0dGVuLCBvciBhIHBvaW50ZXIgdG8KKy5JUiBkZXN0W25dCitpZiBubyBudWxsIHdpZGUgY2hh
cmFjdGVyIHdhcyB3cml0dGVuLgogLlNIIEFUVFJJQlVURVMKIEZvciBhbiBleHBsYW5hdGlvbiBv
ZiB0aGUgdGVybXMgdXNlZCBpbiB0aGlzIHNlY3Rpb24sIHNlZQogLkJSIGF0dHJpYnV0ZXMgKDcp
LgotLSAKMi41MC4wLjcyNy5nYmY3ZGMxOGZmNC1nb29nCgo=
--00000000000009ced50638f541b5--

