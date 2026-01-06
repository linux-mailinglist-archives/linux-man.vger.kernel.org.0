Return-Path: <linux-man+bounces-4647-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE9ECF6F7C
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 832133007918
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAF5C29E110;
	Tue,  6 Jan 2026 07:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WXzEsIwn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B25307AC2
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683387; cv=none; b=dIuSLW/L+YyQw5hYX9tcT72g9on9Q96ksyHQjVN8Bg3Za68ciy6CuUuqnCuLCbjH9v/BSm8QR63LeWPkgZYxDgwP8YRt54Z69PhfefE4N5ZLntFQOTKbE5m5EovaDwZNns4bXIwISK+DzaQ6WFjAOT5jBu0CnF2ET8NgaLDT3Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683387; c=relaxed/simple;
	bh=YfJxOF9Ekqgxi2X8VzCYY+X46Yvl9FuouO25skCkBTM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P506+Ia4ZWFln1KvsDPL3lCF2AqhD3Bjow0YCudGyG0eUYXPPSdnJ85kxnW76fRtOjYGLWBdKEOO3jf6Zqx689+gv6T0uyifPbzmUz+8B5jI4nxEFUHYi/BkpbiaCDyk5pbogkc5o/bPxoKjI9VqYlJjG4yPi9MeyHYyRai6anA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WXzEsIwn; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7b9c17dd591so632452b3a.3
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683385; x=1768288185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=32u/LOJhbWClFGa7rjiNJcXAvNORjioVRocZKnnKjWk=;
        b=WXzEsIwnBMopbN2S4f+DwFV971AyJBn5RiVDXKWM166ZXar2a6MqS9NGOSqAeY7I4n
         DEIkFhP9ihli1JLeQoVPweflA8cRuaO3LzqyZAQRl/lH4LzUdmOXAc7rNwsC/AdxQSB+
         sFt3KNGLF5JDOwc8Ml9YGLlWO3MvJ4nmlRFTFzE3m3u0K11OpqGFdFDsTcRlCpO6XCO4
         KJ/Mr0ecweoxACfFzahdoyU/pXxv3Drmgp+6GCMzsq508XNfettwfwp3TfS0HFaN34Nq
         4wD1d+aXcgaPUbm6iUBNfthBo9kVPOXlKG72UyJoqJI9gNF6bp1WeoKIs72isK4U1fXS
         BxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683385; x=1768288185;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=32u/LOJhbWClFGa7rjiNJcXAvNORjioVRocZKnnKjWk=;
        b=qU4MVwXSWabTBYPlEyeiObh2j96Ntt7cOWpNKxTCMDcDt+FEx9iqs8zwZP7P1T2Gty
         6PoYq5EwORiNeat4HRzXyyRrGFrx9vy0vOasVKBusNqBpug2lHFz7O0r3MsPD2JN+Sfo
         YTUNyrBNpa5aBSi+ItsUqxgVJx6DeU2NDI3nTtDqNZbnQRb3RpWTLPE8v1hUQoMd/tJS
         irIw/9D11n5hxdSCAGekacGB0bmkKLK9WiNnYiGHV7MIzI/r+3ue2hfqji+gzd4EyRUS
         6tGHggtI7/Z5NBZ/P/put53Mac3JARWRyOp4dKKLB/kyevthkmCcfhUSQYKb2W5Nrek6
         QI7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXrk2W9mSTuf1quaMSw1leWg/bbFmKmlWiiUley6dYEDTOoZg50x2cGNGj5BG8KzqmMpcUIDc1kZPw=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn3+/kWQ1YVue6WX+nsVZeMx5/6X+AH2kh83wxf9pX+EgNY45k
	aqvpZobMputzcyc3TzbzL6lP2HSmNAN774s7acEQbkUi91HNlRiJYzuH
X-Gm-Gg: AY/fxX5zlh2UdwtzHuKGYuLQ8eJuQ3p7Nyxbf5ZQVmZaV8NcAy7iSQfm33fjSK3SnFO
	oSCM5OAONve+WX9s0sISLIwvfJWKKa1CX8l4us0bbem7j4B21nZ4G1f/y5ZQP6DEM/+OSKbQymO
	RX4AOzJiGP7UO9jeAURxvrCiFfRkiISJ4FDUVh7snA4PF+DCJx9PphwyKdz5qrVOzlKpVah3Zbc
	34iwHdQ0dJnth/C9enpFfNaroNz6ECBegX2fZgYBXbBmJNkBA6pxciBgsgvLNVSzQx53+n7fMOB
	ZNP7Zg8qZkttRCVTMRGfm2PcKU+zhTbChbZsxqy43EUHCelhnYs4X5UJsTpX2QFdeN1fViDk0yz
	L45o52WpgvKiqsrzKGdTtOh+dsrhVuZQ0V9rc5BY2HMuhiNV5Z1j+mqfPPSeMeUg7QGgvsSLOBj
	cA6oRFr6cwOEuuBKp4cOJnRNi+WdkLwQw+AEq7KS/jw7zVTweqiDAUvexOHbNPKnIRiI62au4Tb
	ksNCx3yAwwXeFdV3mMgnxRMXQA=
X-Google-Smtp-Source: AGHT+IHwNuErqthBBgYrDoumfl0NyB4FWv/NTpRmKbYNMqypisWcv6pKKUbnekQAxo7g+zpPMkN+0g==
X-Received: by 2002:a05:6a00:44c4:b0:7f7:532a:e44b with SMTP id d2e1a72fcca58-81882ed524fmr1746080b3a.41.1767683385579;
        Mon, 05 Jan 2026 23:09:45 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:45 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 06/15] man/man3type/dev_t.3type: HISTORY: Update first POSIX appearance of dev_t(3type)
Date: Tue,  6 Jan 2026 17:07:55 +1000
Message-ID: <2bb3f33e65b7e287ea61dc201e249beb692b6001.1767675322.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767675322.git.sethmcmail@pm.me>
References: <cover.1767675322.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dev_t(3type) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Table 2-1 "Primitive System Data Types".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/dev_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/dev_t.3type b/man/man3type/dev_t.3type
index 398e6f953015..3bcebcd16191 100644
--- a/man/man3type/dev_t.3type
+++ b/man/man3type/dev_t.3type
@@ -22,7 +22,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1988.
 .SH NOTES
 The following header also provides this type:
 .IR <sys/stat.h> .
-- 
2.47.3


