Return-Path: <linux-man+bounces-2346-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F66A28221
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2025 03:44:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D5FB1618C3
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2025 02:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4DD1212FBA;
	Wed,  5 Feb 2025 02:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=tapscott.me header.i=@tapscott.me header.b="MvpFkh4w"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C539C20F082
	for <linux-man@vger.kernel.org>; Wed,  5 Feb 2025 02:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738723393; cv=none; b=h2fs99cS/0Khj+aq3Vw5IbtR5Uap+TbdFhWdDAoMjwQ+BADMufegpA3WKSckpuEL987kJJJbodx62hOMb5p47d9+Smj6v3zw5+CYHf6ecpA4wlLQA5LWbh46cuOxyg4LL6bZZ/rHtyP0L5Oawq66HLOpLLaLdS98qczkKEcjZAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738723393; c=relaxed/simple;
	bh=5tmUpQCEcmpatsfCvfDgs4Q4Yakiu7HCPzfQeIIhuZE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=aMROwqhgcq0npIi/sJXvE/JCNHzU+JCVSF9e0vZaph/eVY1oK/6aQwAubT0YyH5jaM8sFCZ0CcobZZAiyMVRnijEwGis0THwzrTo28BWP45POokiaeKg5fLQnuidLfWHpJPd3aUcmq3mWB3igk+kWQkCJzV4du7AaADJOSDkwfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tapscott.me; spf=pass smtp.mailfrom=tapscott.me; dkim=pass (1024-bit key) header.d=tapscott.me header.i=@tapscott.me header.b=MvpFkh4w; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tapscott.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tapscott.me
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2f9b91dff71so2521052a91.2
        for <linux-man@vger.kernel.org>; Tue, 04 Feb 2025 18:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tapscott.me; s=google; t=1738723391; x=1739328191; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6YnXjMYvyrfiMDnEhCbC4NAq9mPgBQz7YTITmT/+280=;
        b=MvpFkh4wm0a0SB8kuA/RKetVBACK+/VduXTd05NdvwbnWjPDjF39lKL5x8A3tDy+s8
         1VE7+4s/xJDtW4RedfaI8MhgHtM+mqAO8TCLAaTibffv/R288AZyeFoztvId0wvv8VlO
         NFNCXUcxmGX+rkCLl5O18WkgYfJ2bgEXXI7C0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738723391; x=1739328191;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6YnXjMYvyrfiMDnEhCbC4NAq9mPgBQz7YTITmT/+280=;
        b=JSpyKrp1gqFY4ODoihCbpDM3CbwoSKvyTlBJfXIK1av3S1pc039sij+1BSa7KDmowk
         gdD7L0NNBC8NiqvKC6RpKMhw+NYGm9xWrkKXtvSNHEolapzozQLWTAies/Bd4NXedxNC
         CDldTadL3+lVQqgPmst2miXcNdJ/qBvF/K+IUvKKOufFzSGnSE61Ax8Fn0PZAEm+9xP0
         /mtzkecyrwiw6guet8dIzMiDwr7wmMsPapi4+AoITQsQkIXjsDuMEBwvUU0vFViRpKEY
         Fi5K+P/1v+CxbIprG7O8NQhBL4LlBvGxoMvOPeE2SHg1bixaw6xlxY4DCDbv19YaDj3S
         4KVg==
X-Gm-Message-State: AOJu0YyACroKS4HoFwStVvdJsCMhsJXEbep5X2OUJLQhZ00Rl0rbMjW6
	vQeonSGDJm4FmU3CNuM92b2BuhEray76dwarAQIIppZ8V5tiN9dDR45mymHknEKz8dqkHmPyDF7
	g++e88Nkr0pmgFlJb8OdYQtRyRN57ax7JFrsFuPZeafVOmpY5bTzrZg==
X-Gm-Gg: ASbGncvMJbHUwOIo8uezhwWzE7hJJtWMiq/Tqdg/8jYWuZMyBWT0DpPp2cPe2Eqh1Sc
	o4DQXD9dViDmsWpbfCvMgt7jwN8kToTRtPAOI/x2SS3An3Jq5A8NyvwRUgNq504/DR93UZ3H3
X-Google-Smtp-Source: AGHT+IFKzpR/UY/UU4uhshPfHOQjoiyKXSVUghNMie00utsv+UP5x7B5bziWhfKw4ULsbzB3Zb1Qb3sqo1q2Txo5fV8=
X-Received: by 2002:a17:90a:d44b:b0:2ea:59e3:2d2e with SMTP id
 98e67ed59e1d1-2f9e07627cfmr1832312a91.10.1738723390739; Tue, 04 Feb 2025
 18:43:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Cody Tapscott <cody@tapscott.me>
Date: Tue, 4 Feb 2025 21:42:59 -0500
X-Gm-Features: AWEUYZmczDrFQpHcOwFOuTwtu8jdWlX6ZmH_wpDwhVMVY340symsbL71J7OElzg
Message-ID: <CAAM_cidrPK1W+K-nb1gY_QHbveKguOMzG34NJ=_QKhz49=vh9A@mail.gmail.com>
Subject: [PATCH] man/man2/perf_event_open.2: Clarify that exclude_kernel does
 not affect time_running
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000118d4a062d5c164e"

--000000000000118d4a062d5c164e
Content-Type: text/plain; charset="UTF-8"

The goal of this patch is to clarify some limitations regarding re-scaled event
counts measured via perf_event_open.

The man page recommends re-scaling event counts as (value * time_enabled
/ time_running), but does not mention that some time-filters (esp.
exclude_kernel and exclude_user) do not affect the reported time_enabled or
time_running, sometimes causing a very noisy estimate of the true event count.

This limitation is easy to encounter when profiling events that are dominated
by kernel (>= 50%) vs. user time and which are relatively short compared to
the PMU muxing frequency (~several milliseconds, on my machine). In those
cases, it is common to see (time_running / time_enabled) report, e.g., ~50%
active time when perhaps almost none of the user time was actually spent
with the counter running, leading to a dramatic under-estimate of the event
counts.

Signed-off-by: Cody Tapscott <cody@tapscott.me>
---
 man/man2/perf_event_open.2 | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
index bcc6a39cb..d52c04c3d 100644
--- a/man/man2/perf_event_open.2
+++ b/man/man2/perf_event_open.2
@@ -1063,9 +1063,23 @@ .SS Arguments
 .TP
 .I exclude_user
 If this bit is set, the count excludes events that happen in user space.
+
+Note this does not affect the
+.I time_running
+or
+.I time_enabled
+fields, so enabling this may impact the reliability of the estimated total
+counts in the presence of multiplexing.
 .TP
 .I exclude_kernel
 If this bit is set, the count excludes events that happen in kernel space.
+
+Note this does not affect the
+.I time_running
+or
+.I time_enabled
+fields, so enabling this may impact the reliability of the estimated total
+counts in the presence of multiplexing.
 .TP
 .I exclude_hv
 If this bit is set, the count excludes events that happen in the
@@ -1677,6 +1691,11 @@ .SS Reading results
 and
 .I time running
 values can be used to scale an estimated value for the count.
+
+Note that for most events these values are not affected by
+.IR exclude_hv ", " exclude_idle ", " exclude_user ", or " exclude_kernel
+and, if these are enabled, the scaled estimate may be
+significantly less reliable in the presence of multiplexing.
 .TP
 .I value
 An unsigned 64-bit value containing the counter result.
-- 
2.34.1

--000000000000118d4a062d5c164e
Content-Type: application/x-patch; name="man2-perf_event_open.patch"
Content-Disposition: attachment; filename="man2-perf_event_open.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m6r9j3jm0>
X-Attachment-Id: f_m6r9j3jm0

ZGlmZiAtLWdpdCBhL21hbi9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yIGIvbWFuL21hbjIvcGVyZl9l
dmVudF9vcGVuLjIKaW5kZXggYmNjNmEzOWNiLi5kNTJjMDRjM2QgMTAwNjQ0Ci0tLSBhL21hbi9t
YW4yL3BlcmZfZXZlbnRfb3Blbi4yCisrKyBiL21hbi9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yCkBA
IC0xMDYzLDkgKzEwNjMsMjMgQEAgbWVhc3VyZW1lbnQgYXMgd2VsbCBhcyBhbnkga2VybmVsIHVz
ZSBvZiB0aGUgcGVyZm9ybWFuY2UgY291bnRlcnMKIC5UUAogLkkgZXhjbHVkZV91c2VyCiBJZiB0
aGlzIGJpdCBpcyBzZXQsIHRoZSBjb3VudCBleGNsdWRlcyBldmVudHMgdGhhdCBoYXBwZW4gaW4g
dXNlciBzcGFjZS4KKworTm90ZSB0aGlzIGRvZXMgbm90IGFmZmVjdCB0aGUKKy5JIHRpbWVfcnVu
bmluZworb3IKKy5JIHRpbWVfZW5hYmxlZAorZmllbGRzLCBzbyBlbmFibGluZyB0aGlzIG1heSBp
bXBhY3QgdGhlIHJlbGlhYmlsaXR5IG9mIHRoZSBlc3RpbWF0ZWQgdG90YWwKK2NvdW50cyBpbiB0
aGUgcHJlc2VuY2Ugb2YgbXVsdGlwbGV4aW5nLgogLlRQCiAuSSBleGNsdWRlX2tlcm5lbAogSWYg
dGhpcyBiaXQgaXMgc2V0LCB0aGUgY291bnQgZXhjbHVkZXMgZXZlbnRzIHRoYXQgaGFwcGVuIGlu
IGtlcm5lbCBzcGFjZS4KKworTm90ZSB0aGlzIGRvZXMgbm90IGFmZmVjdCB0aGUKKy5JIHRpbWVf
cnVubmluZworb3IKKy5JIHRpbWVfZW5hYmxlZAorZmllbGRzLCBzbyBlbmFibGluZyB0aGlzIG1h
eSBpbXBhY3QgdGhlIHJlbGlhYmlsaXR5IG9mIHRoZSBlc3RpbWF0ZWQgdG90YWwKK2NvdW50cyBp
biB0aGUgcHJlc2VuY2Ugb2YgbXVsdGlwbGV4aW5nLgogLlRQCiAuSSBleGNsdWRlX2h2CiBJZiB0
aGlzIGJpdCBpcyBzZXQsIHRoZSBjb3VudCBleGNsdWRlcyBldmVudHMgdGhhdCBoYXBwZW4gaW4g
dGhlCkBAIC0xNjc3LDYgKzE2OTEsMTEgQEAgSW4gdGhhdCBjYXNlIHRoZSBldmVudHMgcnVuIG9u
bHkgcGFydCBvZiB0aGUgdGltZSBhbmQgdGhlCiBhbmQKIC5JIHRpbWUgcnVubmluZwogdmFsdWVz
IGNhbiBiZSB1c2VkIHRvIHNjYWxlIGFuIGVzdGltYXRlZCB2YWx1ZSBmb3IgdGhlIGNvdW50Lgor
CitOb3RlIHRoYXQgZm9yIG1vc3QgZXZlbnRzIHRoZXNlIHZhbHVlcyBhcmUgbm90IGFmZmVjdGVk
IGJ5CisuSVIgZXhjbHVkZV9odiAiLCAiIGV4Y2x1ZGVfaWRsZSAiLCAiIGV4Y2x1ZGVfdXNlciAi
LCBvciAiIGV4Y2x1ZGVfa2VybmVsCithbmQsIGlmIHRoZXNlIGFyZSBlbmFibGVkLCB0aGUgc2Nh
bGVkIGVzdGltYXRlIG1heSBiZQorc2lnbmlmaWNhbnRseSBsZXNzIHJlbGlhYmxlIGluIHRoZSBw
cmVzZW5jZSBvZiBtdWx0aXBsZXhpbmcuCiAuVFAKIC5JIHZhbHVlCiBBbiB1bnNpZ25lZCA2NC1i
aXQgdmFsdWUgY29udGFpbmluZyB0aGUgY291bnRlciByZXN1bHQuCg==
--000000000000118d4a062d5c164e--

