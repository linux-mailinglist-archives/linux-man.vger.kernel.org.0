Return-Path: <linux-man+bounces-1495-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAC593789B
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 15:38:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC3FEB20EFE
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 13:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 951451422DF;
	Fri, 19 Jul 2024 13:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="KeNUH6y9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com [209.85.208.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE78A13EFEE
	for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721396315; cv=none; b=SUVGKHjH0V2lHSqem1WhEbWS9BhezE97jr4w7PQNlXtii36zHs1rZBKD2AKMlHsjdHB/MeIvSgICyO9kGyoYpG9ZVlvhIydTZ4z0LnrNUXqK74hqHG0CdpCL6e2P+IVUnqqcSKZkoaKpUWFBy7V+J3lsx5t0+Jk6NaJeYuYp1dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721396315; c=relaxed/simple;
	bh=uO7XdyzyFEUBGlUi0XtnqNRetmqfc94Z8oRhB/Eln2Q=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Va/00PZXfw7JwWqfQ5X3uyBt0N9CuKP7vH+loytmv1v8oJuhnMvCZhHaIJAgvKCghXIToOray7nkqdXxl5+d4L86SVrkNBuISADtpV36fR16T+FKyygwuS3HMeqUFRXOBp0Pmpd6JxHeEmrVuvGl3TK4fGrqDSPv9tWB6udYTSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=KeNUH6y9; arc=none smtp.client-ip=209.85.208.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f73.google.com with SMTP id 4fb4d7f45d1cf-5a1f96ea780so854866a12.2
        for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 06:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721396312; x=1722001112; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uO7XdyzyFEUBGlUi0XtnqNRetmqfc94Z8oRhB/Eln2Q=;
        b=KeNUH6y99ZV9UxTTrFrWFVBHkbY79qmGspKlrJ17spsegTcmf201nq2YCaQJ5WsQer
         bK8+yVp5Bt3jtbJk61WcSkYWEgSJGihvTJX+rOMlOwlMhBufwbTfFKqzu4lTfwfl4xGs
         BnzyjYL6FF0cIFEIYhpLemdupC3HnmdX6l1T1ouiRlzzLdIq3FejyT/7Bx9sQfPgGOeT
         KG1/KA7IcH+1nabXYT9k/oqFf74uT9ousvk20yUU+QHf2fxNBINXBoHAlcoLY8WTkhdx
         G1SzY4RXKZnZYdOprpu4+JRVPY/cck2X+HUZJC4w8rGh2kZjYpLmlgIh/MRKWgFGK8kU
         YDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721396312; x=1722001112;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uO7XdyzyFEUBGlUi0XtnqNRetmqfc94Z8oRhB/Eln2Q=;
        b=hU0+1FRQDZoj+vWaUqRk9urLw0jlNHHDCFWi5w0udApvuPT9VMMYFcIuD+XsEX32Zr
         w1ENkzlTNzCO+VWIC/kQSKIMIzAIbgNGpftsRLh1oBUUI/ieGbVZ2zAwPYxM6cI5bcls
         RNXV8q5f/0IUXiGTQACkDQW9+NbZMN4YszxTJWpPqMnjnRzhocwAJ//9cwTB3WboNaSc
         5PJ6gnkkaXhflN4v+BWe26qdvnmi29+xXZL/huXMPJiXrld/H9WMfdLzovNUCtuetXad
         M2eBCAjeHshdT4pz8d2FB4DA0oYX/u/oEMwuxeMJCmhylz9oXuUImUsrGx4ON09DArcl
         jdEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfHFj9jmHOM0NZ2rNXw/To6+oKvNFL4Qpf3ohERlhKJHXmcq24iHIcTOTgs8aq8xZdnCz1CunQ5DW7a0w1xMAyCUxXN/OPJbMv
X-Gm-Message-State: AOJu0Yzrgzdw+/LSKsQYJar9dibbNSyvqS/rZHkruc/MlzXWj+MN9WEY
	j6jmO6LePOMk1ZfjX2StSeiSmCvfpJlk+8SplXhnqED8VCCE9ltEk3XOzupwWNtJChF9Vyr9q7P
	wRg==
X-Google-Smtp-Source: AGHT+IHbVagAi+UTAXk2vtXmXXUOXF3vnj3mQiPfjgdGVN2/YHuD64fkG+eVvmF9MWkYRTxk41N2E4nKNio=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:aa7:cd54:0:b0:585:c001:c1b4 with SMTP id
 4fb4d7f45d1cf-5a2ccd8490emr1929a12.5.1721396311922; Fri, 19 Jul 2024 06:38:31
 -0700 (PDT)
Date: Fri, 19 Jul 2024 13:38:00 +0000
In-Reply-To: <20240719133801.3541732-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240719133801.3541732-2-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
Message-ID: <20240719133801.3541732-5-gnoack@google.com>
Subject: [PATCH v2 3/5] landlock_add_rule.2: Document missing reason for EINVAL
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This documents a missing reason for why EINVAL might be returned.
The documented behavior exists since the first version of Landlock.

Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man2/landlock_add_rule.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
index fa0b1f109..530b45947 100644
--- a/man/man2/landlock_add_rule.2
+++ b/man/man2/landlock_add_rule.2
@@ -101,6 +101,16 @@ The rule accesses are inconsistent (i.e.,
 .I rule_attr\->allowed_access
 is not a subset of the ruleset handled accesses).
 .TP
+.B EINVAL
+In
+.IR "struct landlock_path_beneath_attr" ,
+the rule accesses are not applicable to the file
+(i.e., some access rights in
+.I rule_attr\->allowed_access
+are only applicable to directories, but
+.I rule_attr\->parent_fd
+does not refer to a directory).
+.TP
 .B ENOMSG
 Empty accesses (i.e.,
 .I rule_attr\->allowed_access
--=20
2.45.2.1089.g2a221341d9-goog


