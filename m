Return-Path: <linux-man+bounces-2561-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 019E0A4B482
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 20:44:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F30D3AABD3
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 19:43:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3F381C8FB5;
	Sun,  2 Mar 2025 19:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jXJZhVty"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A631B4247
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 19:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740944640; cv=none; b=CzpWc88kOshmWzhhJsoNJaFPDAk13/4Rbu2ihTB7vmREJk4uCROVimlv8eLumwwldCJX8v9CvzAqxvwwZwcMJn4MSsKKpNjwcAyTGdzqMIQ9IV0FzGOgb//Dcg/WD6wb7sGWxXr2RwUSjreWJyj7bEBAVkWQ33dDWVG3h0xx8rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740944640; c=relaxed/simple;
	bh=zkeqGV3IZzrkdQMeCPd8pxSOAcMtsn3NDrnjMXl1jqw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b0ehe/HQaitGYKpoqksEKX4j381IH5beLxIyZe/Tw+vcF62EJXVSPxOOhLwa95+kUhY3/ZtBBxne5WhccSgTDgoW3GQ3JYYo0Jh1PG44tdR+UdfALeG+i+ZvH5zEXw34CJqqBTNsqiZpnvylLbVb0MCqPxuffVGAfrfT49jqcn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jXJZhVty; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38f488f3161so2252862f8f.3
        for <linux-man@vger.kernel.org>; Sun, 02 Mar 2025 11:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740944637; x=1741549437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I4HkbeQ6ziwnbjaa7m2nCRG1VBQ3lV20yWna3PR8BlY=;
        b=jXJZhVtyCoMvpzpPnhLHaHSQcD+7ZAub+qz2i254tu2Ewq9DuPk6VfOrJLf5oJ1Zl8
         moqdKcfgbdpuR8JfLQWz/6EHXFXAVbo/8iDri5gY5/o1P0teUmZilzjiqxbWxjgpQUiv
         L7vDUAV8/ntQefgwI6S/shxtVWYMXgNbFhrsHAtQwy6J1b0w8BB6XbyWs6lzytyHIgAF
         4vBOFFkD4GUTREgAFdvEYPQfz8S7pNq4cp0Jc2xmhYv8h726QdR7/BMi+iTtLB8G0ira
         89Z9XhwoAJCEHIEGEj1Qtp0PfTgF1yJYFchakruolJuzUZLx0PBhapgS7I58/KxcLOi3
         1U0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740944637; x=1741549437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I4HkbeQ6ziwnbjaa7m2nCRG1VBQ3lV20yWna3PR8BlY=;
        b=j73+/KIVUyFpEe0jkkb0csPTnLRAJfSJ0lsIu7oqXaPnLirk+UNkzPOxW56Ea+7fO+
         eAHWifnV+4EuD2DvfbuQUjmyjqo/IdyU1uzI/LVvkfOvRIhnP9td+MUUz13c28uY40Qi
         AfC3njnl6EQcUZSZmaYG486EEd49K/fxm2qO+ToNFrzOR18L9EbsU5csE/LA/GSreif4
         n+A+LY966M4X0dJvU5e5S7H5fkUTBueq44woWbzbF4ataTzppfr4EecVO268AjmesXmv
         BfXeujCPyhpvICIQmMch43UJBRopXIqBsObI4YUN/ZAu8cyaTEVz5PGoKODc3WJz3R90
         l9ZQ==
X-Gm-Message-State: AOJu0YySoU1/9TKl+FbOSBAXRMM8lG4B5EGf8HYfWC+HF1ZW/77fG1lv
	1XSIolbs1lh1ixxNYPp9UtrFjwgDcCUR/9sqC0ZdpTytfHfYPa31
X-Gm-Gg: ASbGncvgQgUpuVnelAgJU/gbWMrT9Ixht1GkCbbbDHsKCPPhrTIA+OLMAgx5QOQ0lQZ
	VE9han3Ardy9cHbygvRuVjbFNAX/DFdsSJbeKxTUSzMVbMB39plcnpU/5BQIMi98KruXOD8/ny5
	ufGyskTcPjJvpOEsxUK+nQyTeDOogYt5DvjKpaAatHKND5nTYkatg2JurWrQyiTfzCtaN1DLDqJ
	RwIV/Dj2zn2dSJoYHveUdLjhGiNIsnuWpVwvWfjG/3PtdrEkn7k/NvzgoxGEnu3Mnoln5JbLXuv
	jxt+FuWQKeWkzaugXnkE1YkXTy4z9EdPZyCs9xEpAA==
X-Google-Smtp-Source: AGHT+IFLPHxfq6JpGZKRXO+w7xr8rz/8UAZ/3t31JHZh7B5FU23+SF97/oqsgH2Hxvun0xTlHn2H2w==
X-Received: by 2002:a05:6000:2ce:b0:38d:d9bd:18a6 with SMTP id ffacd0b85a97d-390eca07164mr7861501f8f.42.1740944637051;
        Sun, 02 Mar 2025 11:43:57 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-390e46f580bsm12036461f8f.0.2025.03.02.11.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Mar 2025 11:43:56 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alexjandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	Jared Finder <jared@finder.org>,
	=?UTF-8?q?Hanno=20B=C3=B6ck?= <hanno@hboeck.de>
Subject: [PATCH man v3 1/2] TIOCLINUX.2const: Restructure documentation for TIOCL_SETSEL selection modes
Date: Sun,  2 Mar 2025 20:43:33 +0100
Message-ID: <20250302194331.5135-5-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250302194331.5135-3-gnoack3000@gmail.com>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

* Indent the documented selection modes into tagged paragraphs.
* Document constants from the header file (tiocl.h) instead of numbers.
* Clarify expansion semantics as suggested by Jared Finder.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2const/TIOCLINUX.2const | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index c0acdd0ea..f2c8d0720 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -65,11 +65,26 @@ are the ending
 column and row.
 (Upper left corner is row=column=1.)
 .I sel_mode
-is 0 for character-by-character selection,
-1 for word-by-word selection,
-or 2 for line-by-line selection.
-The indicated screen characters are highlighted and saved
-in a kernel buffer.
+may be one of the following operations:
+.RS
+.TP
+.B TIOCL_SELCHAR
+Select character-by-character.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.TP
+.B TIOCL_SELWORD
+Select word-by-word,
+expanding the selection outwards to align with word boundaries.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.TP
+.B TIOCL_SELLINE
+Select line-by-line,
+expanding the selection outwards to select full lines.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.RE
 .IP
 Since Linux 6.7, using this subcode requires the
 .B CAP_SYS_ADMIN
-- 
2.48.1


