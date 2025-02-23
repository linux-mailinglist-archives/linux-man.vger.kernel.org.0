Return-Path: <linux-man+bounces-2508-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A07A411F2
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 22:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E71123A9F9E
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 21:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A72C1D89F8;
	Sun, 23 Feb 2025 21:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i3SMnY8S"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99AE315666B
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 21:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740346641; cv=none; b=plXu5mvADPqvgIZp37WBbkL8xAfdn5tdItOz6xRpjEQ3rI/NSIAShg84jU10qq8EcaivZkQkof0tVpinK1whlbfmT+KGQIKLhUWW7q5hsP0pHdRjawAYuB8ro5Z852OPO58K9tWoK3oHXGR9V0CfL8W9icGKq3Do/lF3HWQEx5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740346641; c=relaxed/simple;
	bh=pmzsWeSXZ0J6LESpk8Vqtf965XoBYZ/5WimD+1jFlAM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pAsBpOl7XuchHl6QPa4yg4ssi+PhZv4UOGB5GnTch0u9bh/rpFkrKYpRHCGB6hzaG0XpGFcgrlB1Tvy+v7wv7W6tmJe/6vptqfnz7dzgkvucjHmcv2r2DqsTdmetJCeECe2vxTl7kde4AFxuf6wqt52ecbPyBOEqEO2Q17PY1L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i3SMnY8S; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43948021a45so33038145e9.1
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 13:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740346638; x=1740951438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aKmvGwylt8RUT1HRqfIcIPVaZmoabOeZeUCES519YBM=;
        b=i3SMnY8SALKFRuiDkkNjRayaYL6+pxpyMe4MxyEZu6fgJ3NGYFivctT//0njswzhMS
         NX8hukS0ke6df4Tn/aKSsy19fdtsu4a3MHw7j6UmhRfHk6Tt9zqKFc/XzLs/H7m78qlA
         SdHZKIcO2/nSOjmIaVFtiNcqEuQ6n7N7XVdhKXdLnzGpLe9BVQij/JHkFKOlLyB3OP4w
         ZU1f28EMR3iasQq9vsjRgFkUs14A8R3Kgu44PAoMWyyL14/po7HwJvXiymSXywuYXhaM
         34iC1OUdDZ8VhpXeIZPJzKl4O5bi3n14OikFozNCx8cqJRSGnLMdyGKQxNLka+F2DlOI
         Fzlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740346638; x=1740951438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aKmvGwylt8RUT1HRqfIcIPVaZmoabOeZeUCES519YBM=;
        b=RYrBuq33bFr3NjmeznZRHF4kONtEVkx/osqD0F2q+thkRELgYl1SpXlTnZUP7KFytA
         Nshfy7K3JgzvWNBrsCHjWiMMQ+wEMA6v2f9JVw2dsn2cPMfLu4gASmjAGMVjrgQjbiea
         KTDPSK5eRdLn/29/gkD34a8867FYlRqhY2/lr8Lmi3xLdq8KntQdDH12I98mZuQWYKBZ
         6Vd9Q3HXL1osej28DJUPOMezlWInH45Br/5pUm/1byFEKBeg54dE8bJvYrJ91Dl0xc0v
         mS3Hc9BaoDRCLx7WV8Yj75kQx8n0iyrqZ9Hf4nCpyRRBcuXPvGqflQ3fnHsbDm/pt5K8
         cauw==
X-Forwarded-Encrypted: i=1; AJvYcCUTHEr/jffjrCBaYCxfi+RI3g0a9ZnNs4ZtWb4AvTQsN4e7gz/KV2JTwT9OrFpa/u+OyNneY+IK0YA=@vger.kernel.org
X-Gm-Message-State: AOJu0YxG/81AG5jCk24XTpnotXL4cBEzPStrc9D/+xIDktPoB9AkpDmM
	iU0VVEMfI7vKg0/GDnkLJb7cWVMiREErp62gm8OBTOrk8f/aLDn3dXNKbQ==
X-Gm-Gg: ASbGnctX0ZZ673d4E5UQtTI2Ne96k5J2gAY8upWmHDUjmiwv4QWqXbp/oYjzGshBpaY
	JxryqFVnxbg2pcQNOXRxOX+BS1oZSAmfJ/pxRW1wVV/Lb3L1jLjNOxKK7OelyX4OuAmeBSdApB4
	NPvjXogcSFoeQwol+PxHStkt2PBPYw0lq9NTLLsYXZIdM3coLkerK2EeTpP9nfCFrqTmLg34N5G
	ebrDPYMHGS9WFSXik6yHwvtZQ6rA13duAS1Dx/RY9ksy9IpOZRIVHoY9+nZ4fiqioOWmBowUX5Y
	aPzPKeDwAjR0+3m8/YLXHSU=
X-Google-Smtp-Source: AGHT+IEN63SspUydv0Et32My88UgAOIGp3RzAS89uxJAHPJrHX6QtVVTmhDFW3atFvO4/geldA6LWw==
X-Received: by 2002:a05:600c:4753:b0:439:9985:6984 with SMTP id 5b1f17b1804b1-43aa95447bamr2679885e9.30.1740346637722;
        Sun, 23 Feb 2025 13:37:17 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-439b02ce41dsm90326815e9.1.2025.02.23.13.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 13:37:17 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jared Finder <jared@finder.org>,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH man v2 1/2] TIOCLINUX.2const: Restructure documentation for TIOCL_SETSEL selection modes
Date: Sun, 23 Feb 2025 22:36:41 +0100
Message-ID: <20250223213642.10042-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250223213642.10042-1-gnoack3000@gmail.com>
References: <20250223213642.10042-1-gnoack3000@gmail.com>
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

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2const/TIOCLINUX.2const | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index c0acdd0ea..5db3f6ea6 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -65,11 +65,24 @@ are the ending
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
+Select word-by-word.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.TP
+.B TIOCL_SELLINE
+Select line-by-line.
+The indicated screen characters are highlighted
+and saved in a kernel buffer.
+.RE
 .IP
 Since Linux 6.7, using this subcode requires the
 .B CAP_SYS_ADMIN
-- 
2.48.1


