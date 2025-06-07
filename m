Return-Path: <linux-man+bounces-3112-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A26AD0F38
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 21:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1541216BF08
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 19:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B56DA202965;
	Sat,  7 Jun 2025 19:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CpJbpxzj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4936A145B25
	for <linux-man@vger.kernel.org>; Sat,  7 Jun 2025 19:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749326116; cv=none; b=BeuaPlR8fy21ICEA7s1JbgchB2qz7LW8vagYNTQQji1qlzl4iqaGdZ70r7TOQ4yXa+zrtViM0CE7na3z7Mxgg55WG6KMxVWqeK5ke/l9LDrOYa90ZIcJ5K5njl8j43XPAGoXberiKwwz0yZwIVyLmDAoi2s7QGkC/wvEVSYSm+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749326116; c=relaxed/simple;
	bh=7ZvEG3pH63mOLBUv+00qt6xfHfx6VkhnGrdLFyKP1k8=;
	h=Date:From:To:cc:Subject:Message-ID:MIME-Version:Content-Type; b=hyJNdzVD2e4Gb8ULDvJh3yUkKsVcI2g5hkeZPD+WxPb/hGreJT06ejnghhcQHcCfYw6VthbuUVGepUkThnN/mwND+QAD2DqV96lYEengy8+dCiN2hXTrcMTC6x7fqFnqnNMA+FJza3Bt1tdZaADC2Q/hWOcAuOht28YBSd33VJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CpJbpxzj; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7c56a3def84so291395285a.0
        for <linux-man@vger.kernel.org>; Sat, 07 Jun 2025 12:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749326112; x=1749930912; darn=vger.kernel.org;
        h=mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LLEK/BsJG0bfSQs2G+7SbRkPXqAq30zuZYMBWhAz73Y=;
        b=CpJbpxzjY8vhL7AjbtESJnsW5GsU8mhJ16DHWTq3QiqlHRSHQnLZHa+1zWWgotgSSQ
         1jIJ0r9YPUxXGncmgm/LF0CLK3pY0WQ+v5oc6GrGIWjNCc8yqjq00r7TaRvmhaUmxbTJ
         4zYtf6KCK1K2PRCr+OFdgziq/JGaMr3fp0bDnvemfLrpW6JJ/ups7zi1GE0TRiGRuR34
         A/fcj2yahkbT21wKUgVgm9b7aq/V6zCGsvV8sB4w4QVreesv3bppPgbBGiAvnDijSodn
         prTlmyzgGJDsFjjOblY7X8BfkbOB1dWIBE5FxvFAwmBVu0Z3lGA5LO138D9dvflxd3lH
         YxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749326112; x=1749930912;
        h=mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LLEK/BsJG0bfSQs2G+7SbRkPXqAq30zuZYMBWhAz73Y=;
        b=iMDMT1UPyNdjc5D+exIO1RewaK5FC+oVeQ7wC53vkVZ2yXVRjhxp+5p7xPZkYyaX+6
         41J+/DpmlBserCLTooeWagbnbHPrUE+9iJvkJhBp5FC0rkPgtG4a7hLkUJ8jqy4096Fo
         NlMVa526P9C9A6qf+EFv/JV9n2OR3rGMURrV2puMDsdfausxcTcKj5IfD51B8rgci2Qc
         BP9m2iaCqtKYjlCzWq1j4giD0mebG2liYgGGOjk5dRjuIr/iZ2dwCkWHEoXkf5aRBaUz
         L7dnfsQ9oWdvrHPf9dtsTNOjm2SbmHCJgNGFIjiyDoSF8xwh4gc/T85ABcUdpeWMOohe
         NtUQ==
X-Gm-Message-State: AOJu0Ywi3CwLJ6mucu3npazz/H2aK9JNsGuo6kb8tlakaCOqrpg9vg64
	SfV42p2lmLmy1y8nH1DplbuKSGBJ5l+HfJKgec29ZtOQAuSNr5e0BUsDFIiJeHeyCbg=
X-Gm-Gg: ASbGncu+Ue8Nen4zsIaFo+pD8RYyyutQINOoBf/T4JEh5B83ZCTCHV6uKJKIx5zdu1a
	vudGD3ee8AsGzh6pfk2SiEihtQAJKzwVTV2Fx1gcC/VrwCF0CoRK2PbLFIQafgOD0nRZGd4USaR
	l0W6+2dmWSmqdpPwwNtkGLQTMzK2CI0gzEUqXUQ4PknrwsfxlHjB0idkAqOVNjbNO3sROeD96/P
	kfVPIZa6sCNVAue33gKtrwTMj/6YOFW58D74GJuhY/h4OTC6iGIKVRMSdewUZsUbHyFF2qe8uYF
	w2OotZ/n2lCk1IrkX67qWsmY7XlR/1+3/7y+gNf9dJjLGG0136GHzRCYDM+VeOYxA+mmyuS4kLk
	44jLEFuWLXPpgcEc2t6IyBCHi
X-Google-Smtp-Source: AGHT+IFewo4WUwcBRTdYkMe9zYdF5QT2bljBu0G1U5gR9o+BhfffdmqtQYXgbuwmju4TkaEsiCVTfw==
X-Received: by 2002:a05:620a:1127:b0:7ce:bb40:11f0 with SMTP id af79cd13be357-7d2298a6e4amr846018985a.34.1749326111782;
        Sat, 07 Jun 2025 12:55:11 -0700 (PDT)
Received: from xanadu (modemcable179.17-162-184.mc.videotron.ca. [184.162.17.179])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d25a535889sm342456285a.28.2025.06.07.12.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 12:55:11 -0700 (PDT)
Date: Sat, 7 Jun 2025 15:55:10 -0400 (EDT)
From: Nicolas Pitre <npitre@baylibre.com>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2const/TIOCLINUX.2const: missing info about
 TIOCL_SETSEL
Message-ID: <rssn5o07-prr9-2ssp-566q-n7rs5rr60719@onlyvoer.pbz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Structure members are assumed to be all contiguous in memory by the kernel.
It starts with drivers/tty/vt/vt.c:tioclinux() where we have:

	void __user *param = (void __user *)arg + 1;

	case TIOCL_SETSEL:
		return set_selection_user(param, tty);

And in drivers/tty/vt/selection.c:

int set_selection_user(const struct tiocl_selection __user *sel,
                       struct tty_struct *tty)
{
	...

Finally, struct tiocl_selection is defined without the subcode field as:

struct tiocl_selection {
	unsigned short xs;	/* X start */
	unsigned short ys;	/* Y start */
	unsigned short xe;	/* X end */
	unsigned short ye;	/* Y end */
	unsigned short sel_mode; /* selection mode */
};

The subcode field is initially skipped with the `arg + 1` and therefore
struct tiocl_selection is expected right next to it without the usual
alignment gap.

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
---
 man/man2const/TIOCLINUX.2const | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index 1172ec431..98c6cf54e 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -131,6 +131,13 @@ Since Linux 6.7, using this selection mode requires the
 .B CAP_SYS_ADMIN
 capability.
 .RE
+.IP
+Note: The kernel expects all structure fields to be contiguous.
+In particular, no alignment padding may exist between
+.I subcode
+and subsequent fields. It may be necessary to add
+.I __attribute__((packed))
+to the structure declaration.
 .TP
 .BR subcode = TIOCL_PASTESEL
 Paste selection.
-- 
2.49.0


