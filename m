Return-Path: <linux-man+bounces-797-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDA08AC145
	for <lists+linux-man@lfdr.de>; Sun, 21 Apr 2024 23:49:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F23331C20429
	for <lists+linux-man@lfdr.de>; Sun, 21 Apr 2024 21:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4DF33D0D5;
	Sun, 21 Apr 2024 21:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dzxoKoT/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379D2175AB
	for <linux-man@vger.kernel.org>; Sun, 21 Apr 2024 21:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713736171; cv=none; b=pEkX1OwuT+3PyVnLYX5LKXS0Bjsr477yuEvA2i7w/oMEkElOA1jX7rPkSaG3NkNgIIBcZ0uivWcJ6kbNIFGoXnZkaXMRbDCDwzz7mDFQIW0JQHAx8SFlNi8dpx3ukStNu9AEaBapt1LS+QcJPhCC5blD+Hw6KVs/EMCmxyjqgKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713736171; c=relaxed/simple;
	bh=YeHoTLSm5jc97MYxMMDYqs9OW/VxjvxU9kTMciPDXCs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jl9YTfATeyeTXTXGDtH+wZgeSmmGRGFYX0Z1JjUl0mmQBda3lkrx+ZFb9LTjmCx/MyQ1s123Sk5HKP8soZl1D8OVA/UyMyAozCdty3jsthK/0G39ZCJVlusUinpa4T8BDVGUL1pQedGmhCczMks9Bz+TBlR2tf5l0/D4aBUu8jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dzxoKoT/; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2db2f6cb312so65724071fa.2
        for <linux-man@vger.kernel.org>; Sun, 21 Apr 2024 14:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713736168; x=1714340968; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p+N1jA+VUnQ5sY2Nr7gb5UyQnGJZDwoy5OXfkuCMFUQ=;
        b=dzxoKoT/6kE3TuVVOqk8hbZyzcLUKJdtFqtg7r7W4MQ95MQ9xit6kEVt+c24F3KPdO
         k3EbDb9f0bpA0djK/ubZ4KkxuiGwWibj0pX0konoBL4DjBDJ/IYW5LiUL77kHSPI7dM2
         h/7JJlOccM166U/sdANuX9D7Gl67b2IQgz7/InFUUGXBZ6ImEcXCNLoe4DWRxquPfym/
         KBTngcbiR8X9G/P277wiZVgqANbmsGg4/c9R5ypxgMhjyLlO8U+aiqCj3KZRs5LSD+EK
         PkgqHLDzJoAqcJ3qRSjAc9VqTvCXA2RoZAh0bLEjO4STC64br7js4Ho05wGhlVhzDYCY
         FOYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713736168; x=1714340968;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p+N1jA+VUnQ5sY2Nr7gb5UyQnGJZDwoy5OXfkuCMFUQ=;
        b=LqBppIDYvqCpliiGEJVs2wSTXDoI9fozJCGcBiXlzfmKCMk9LC3CH9raK/RF9tBI86
         fyzf0Es7nxIrymPow76FMJwYt4uN16ktVzD8tOWvkNn2QGGPrHXOmC6ruUkU+5tIQReh
         3EMLP/0XxqqnsIOhbacDIVd+xb/fNsTLfxMm+16aDlRc+Hkho6qEja4HX+dRxbRgakV0
         PozLqASJTE+3JHRAiNxTb8oVi2BXgQEaufUVNiVdIo9KPyMRuRbjpe9xK9SOBviC0me3
         APk4uXg+Bd/cobYg+v4b9ueVMN/OD6pu63l5adQN1kT3D6AlXvrUNPkrjK2mhA/g1WAv
         EFeQ==
X-Gm-Message-State: AOJu0YxO9RqkbEpwUmpNf7dvwxt41i+7eTWrnfw6hkf8wNGIqTi+EQig
	W5xOeCenQ5vIopFFXCcP12wwQIevLqWdJ/z/emwO22Y+9yF5Sc+V
X-Google-Smtp-Source: AGHT+IGLFsYkc8f+6qChGTnQ47adR5vH/Adv4+gPfMJ6Ax2jjSM+jI3dr5RATvf5gW1RlEj1yeN/8g==
X-Received: by 2002:a2e:8008:0:b0:2d4:5370:5e8a with SMTP id j8-20020a2e8008000000b002d453705e8amr5882846ljg.22.1713736168070;
        Sun, 21 Apr 2024 14:49:28 -0700 (PDT)
Received: from localhost.localdomain (net-2-37-91-160.cust.vodafonedsl.it. [2.37.91.160])
        by smtp.gmail.com with ESMTPSA id qq22-20020a17090720d600b00a554f6fbb25sm4944501ejb.138.2024.04.21.14.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Apr 2024 14:49:27 -0700 (PDT)
From: Emanuele Torre <torreemanuele6@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Emanuele Torre <torreemanuele6@gmail.com>
Subject: [PATCH] open.2: protected_* sysctls are defined in proc_sys_fs(5), not proc(5)
Date: Sun, 21 Apr 2024 23:48:53 +0200
Message-ID: <20240421214901.2539179-1-torreemanuele6@gmail.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man2/open.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/open.2 b/man2/open.2
index 8c791fa47..1e98a1df4 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -1021,7 +1021,7 @@ For details, see the descriptions of
 and
 .I /proc/sys/fs/protected_regular
 in
-.BR proc (5).
+.BR proc_sys_fs (5).
 .TP
 .B EBADF
 .RB ( openat ())
-- 
2.44.0


