Return-Path: <linux-man+bounces-4975-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHfSN/6weWn5yQEAu9opvQ
	(envelope-from <linux-man+bounces-4975-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 07:47:26 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7634A9D830
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 07:47:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30975300D473
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 06:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD716307AE4;
	Wed, 28 Jan 2026 06:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DNhl55O7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C384288C0E
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769582844; cv=none; b=IzD1oYJxKrle/pLqyVDz/G5jHQ/9u3IzSOspc1qeG0X7JLrx+lqCnSHRVIxtcbsSKapfy/2YXlT4TDGNLDXWrUUMr2C9cFQzBuPA+WXRwTX3cBLTW4ek01s6BJg1LI1VSqKB6IPqBrvkDV1m5YGzqpuWxc7Te0GDiSlFtRtybtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769582844; c=relaxed/simple;
	bh=Aec3fD5uwQrQFnkVw+CobWfnZ/nFe++d232Sq6tAs4A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=euriwwyGBnSeOAlfmOzj5p8el1QEupoeXH7TDUxhDnWxNOVD6Hzuct2Ox88fjhgoRwD15ydY+uc0vfHsamJp/1MaasK0H3lAkUeKfr9vEf3K16Jl+BaaKEpKJ5KDNp2l5hqjZzC61rkVaH8Fh2kTThWEuUCdJJL8/oWXnGgLqxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DNhl55O7; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b74f839bdfso436834eec.1
        for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 22:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769582842; x=1770187642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DLNDcE5VtMHhMuHQXOQJWNp/So81if+fQ02vYo2HR44=;
        b=DNhl55O7YDwtQs2D4MHQjfjLfRSIcX/gsQvD4Uk+p4YLcIsjU5Bin+XhnMeVbEtEUH
         Bc4CUmYJX6IuXY7hwAcrlXR48p8Al7fltelsW7Hxw1tCn0FYx0reCTCFDoU2VpA7w1rx
         wY/wZNmtT28cRCM04ayJ5BEtYTHZSPOwCmy0DtchFoqb2kZeJQAJXhssrfkHnM4lLPB+
         MdiFjsuueBwYJnvWrBee6NfA8SBMh+scF1TpKkO3uxqZa1nvfriXcwiGP97f8mHe+8O3
         3xUbsGzRChpAonyEX7oH/xkI2k2ShRawTsu0/Rz5Cux3fEaIt7R0V9sfYwVnVtjr2py4
         VIgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769582842; x=1770187642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DLNDcE5VtMHhMuHQXOQJWNp/So81if+fQ02vYo2HR44=;
        b=m0AqCebLntUluzasfPAT6hfPSn5WDS4xm7H1Ey6CRhnxDtIVLZh88R2/4GEyrSaZzq
         7l6umpgcLhyZcQBVlO5hccKXUqAMCbjXsNmfdjuiVPVRvfhIlaEcNIzBhOV2f2X2AcAx
         p37zWVPvP7eTvUsZXHIopA8B4HRaMpkgCRcD2pMXiLCNVDxi7JLWcSIZJ7b1F5goZmud
         C3/P84LPKPe2XcT6zYk9e+WlCqacMdkkFJN6p0O5AkUrXPocA8zq/Hs0H7cudoAMjeB3
         21bJtmzL/rX89LC13SvR4VmhFcxOkfVEnh5sCxmLjx7Sxi8btjIM/pY9xT4sSjQXHn8S
         6/IQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1utyNRs0Q2sMik3Ifup2sQFQLQ7M159OMhvfWYMd014hqYowuZYwhzejY+jO32wr7yRmoffsWjeg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl5XPDpKG1Xr5o50ck6KHcjkeAvE2AVNXqhQ0hihCk3jlv0Z5R
	oZbMP6+KeiMBsX3e0w3mRMA788NVmwmBAvmjn5+x4APXt0snpzHcRCjKgardBg==
X-Gm-Gg: AZuq6aJxtzTG8YMXG7O8+JoAh0Etkx+lGCOr4nW3zmcWnMtjXqdWmRBfMlXQKJm6HYz
	9TnNXKlI19iEdJKOq7FKVFif+TtddRDVU9LJmm1qIKSBnTVfn4wBnWsAuV+ucCMoSS5JycR8mah
	f2Zc7hXzRdLeov7s2DJ10Lrg0IYQkVey6+QtIe9jli+qCdiAo5puRZO66LK787lZFqizHlk13HX
	yGLUZzayiay+atXPGHg+foepjRS5gmHmRWtrLMkda5WnYX3FONkSiqGBcAL+2t2TQcPwiHEA5wf
	zBVBOtdcUwyDl6xk6G9K5EVsLgjs4K7ONAvu+hiQsYUwIKy0kMURmEi/huMJcUnZiz9OJpoqA28
	Kv3WKOwrWet+XrjQIumVsqHS/xAXh3LpZtOYJTK6fT/meGyo2yQFNMFbumIExnLucwbCXYTRhHO
	42iAJOM8J9vO+8I2jFDkM0HPu+hzXw
X-Received: by 2002:a05:7300:ad26:b0:2ac:16c8:ff8f with SMTP id 5a478bee46e88-2b78e81c0ccmr2325519eec.15.1769582840730;
        Tue, 27 Jan 2026 22:47:20 -0800 (PST)
Received: from kira.gmail.com ([2601:646:9e01:94:8c26:9671:d3ab:40b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1af8a7bsm1364583eec.34.2026.01.27.22.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 22:47:20 -0800 (PST)
Sender: Mark Harris <markh.sj@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 2/2] man/man7/feature_test_macros.7: Drop _ISOC9X_SOURCE
Date: Tue, 27 Jan 2026 22:46:24 -0800
Message-ID: <bf785830f727b9fd7a40001b861b743f88fe2a7a.1769581651.git.mark.hsj@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
References: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4975-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sourceware.org:url]
X-Rspamd-Queue-Id: 7634A9D830
X-Rspamd-Action: no action

_ISOC9X_SOURCE was a temporary macro for use before the final name
of the standard was known.  It became obsolete when _ISOC99_SOURCE
was added in glibc 2.1.3 (1999), and has not been recognized since
_ISOC11_SOURCE was added in glibc 2.16 (2012).[1]

[1] <https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=d78099052b6b>

Signed-off-by: Mark Harris <mark.hsj@gmail.com>
---
 man/man7/feature_test_macros.7 | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/man/man7/feature_test_macros.7 b/man/man7/feature_test_macros.7
index a0c97f2c5..76d6e44cd 100644
--- a/man/man7/feature_test_macros.7
+++ b/man/man7/feature_test_macros.7
@@ -333,16 +333,7 @@ .SS Feature test macros understood by glibc
 .TP
 .BR _ISOC99_SOURCE " (since glibc 2.1.3)"
 Exposes declarations consistent with the ISO C99 standard.
-.IP
-Earlier glibc 2.1.x versions recognized an equivalent macro named
-.B _ISOC9X_SOURCE
-(because the C99 standard had not then been finalized).
-Although the use of this macro is obsolete, glibc continues
-to recognize it for backward compatibility.
-.IP
-Defining
-.B _ISOC99_SOURCE
-also exposes ISO C (1990) Amendment 1 ("C95") definitions.
+Defining this macro also exposes ISO C (1990) Amendment 1 ("C95") definitions.
 (The primary change in C95 was support for international character sets.)
 .IP
 Invoking the C compiler with the option
-- 
2.52.0


