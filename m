Return-Path: <linux-man+bounces-3910-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE72B8D3B6
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 04:43:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C32344041F
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 02:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB31420298C;
	Sun, 21 Sep 2025 02:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fhjV7ttH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120C41EDA0F
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 02:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758422599; cv=none; b=ObWz/7xgIVM6fAST0+XRb5PhG26WZbEDHTImI0z/TV+nHSSpdYkBXsxGmLCgUA5MGGWD3MLfs9u2zE3f/jToUNcLK0XxuvpmUSTmtN/gTGqVAnEP0hYVygcipfyBOcI6Eke1WESceFjkdegsCcPrpaI08nCSkTZBITNUdMbBNAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758422599; c=relaxed/simple;
	bh=IOLNp7bbvWfurHuoNIdJ0OXo/N5Q2rG8Kwy2TSpxEww=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j3wmLjnGccWM6ssDgwk3d6LKfcc7E3w95QZHP0yo3wI9VYtdyKS3UZYfCpaO1vlea5ZJEy49kXZfn3s38PsPvD/kU2pNIW1qD1cEsh3EKJxA4GOwMJN6A++xGmtYTdlhNGMNzaimy3cR3PszYuYs/t1H4GN4zJ4oTikqNsoUu0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fhjV7ttH; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b2ac72dbf48so29062266b.0
        for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 19:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758422595; x=1759027395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NuEJ7Kuw6nXBxfCflCZImXovS/FAgf8BObIoPTsH704=;
        b=fhjV7ttHOrlrbrtH01IvFX7CntG4DvBxipSKCbmNFeb1/wcuzEdqikiTbDNnHRKrQr
         nkEaMVH6M1jJ7nga/pW82uwiN7qAy0GJBMMM12DIPMmNjFXTlbGaB1gDy9ahuI68viWu
         nr5MAtJG516HckWQMgtqdOT2iJ7bwsU26y1HG41lMrtdJ44J0snLpW/2ehfPfiimpGAf
         hxnmP7OSoD57TWz9oaiMcV+vNTfZgPHM3PXaer3u2Oh8k/qGgzephwKWiCZ0lrdipz9R
         qgcJ306bkLKYp7nUyNTKBEj8FXvK4EE1Z+WGxpWC3pPjRi0vmo9pPAPbN9pY8un4J6/8
         kFCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758422595; x=1759027395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NuEJ7Kuw6nXBxfCflCZImXovS/FAgf8BObIoPTsH704=;
        b=MKIPJUf0DDcU+EkuxVqj+FK5bZE76fPjKK1m33KaunRVFvoLesJFMCdJei18z9k0aL
         F5gUO1/BtfGhhDz6CzG32IIStAMu+98B+HBIXRXZ5WDAxyOJYrCf5IUleF9pSz941uQk
         KibFYZ+PgyoiT84DKEnMK8HKkwGFjL8xXgQ4JhmX5qJdPOvrKvmGegMbmoceiU44oCNM
         xhR0BrnI/pEt5OFgpkgfGCfQk+g7AJ+qmKJlsElLckg1sJ1ra4nhzlw9qqWUcYlu6tfl
         Xk2QjrCLX+yBmqOyxoeBNh5JsKtCAAIEltahK7WWvrlgMeNOTJlYr6dN5eYn3gn0sKnD
         7S0A==
X-Forwarded-Encrypted: i=1; AJvYcCW9+zE6/y9olc5jcZjlHjHnyJDbap2fznaLgCsH36oaKyAUalW396LQaoUmBsjuaSnIYkZDJ16CA6w=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy15/sfqRtTVhhUgj3Zr3fNo++rclBng0QM0mlIJU5H7juRFdUN
	dC+26qG2eWeCCD0xzCuxs2MFZLTts6YvglNm78TDgKVjKEbU/AJTSuKq
X-Gm-Gg: ASbGncsaZ1U//tvosxQP0E2bXl/7wJxXKUbHmLoqCsjXjWbsIiuDdNsq0kGeW0KyaFq
	mNjB6C0dgKcbALbRasnALu2h8gKQWhVfjZM9okwwqa+cebORWhUBtg9+EJL+fKWEUR6WlIngXDv
	M88wUCWoSS7G07jLhSZQ2Qz/bF9tCJdKfrLzDKot38Tx3fExqUfkg1Y0GM8Ne3ULsAm/CjwShOK
	B+Sn4x0MdwIl1DXVY1d0dA4u99Qt8k6zps9NFl5o2dYfZMnVqAP+xTx7l1sNpGnFj+GY75WQohR
	mUmHncBPOKd0tL0PBHIGWAbVcf+5dlh1kG4BU+6fooABKy99n6CD1sTJh+l8frTyo8ldZUvWaJE
	m+BXJqsXsRQQG81FpMvA=
X-Google-Smtp-Source: AGHT+IEnp3bNDrsmT04jwsuiPJbBPOdlnvUNGeBA+GfxOGwI+dq26By1MGxiqYL9UlRIJoqPtfeHuA==
X-Received: by 2002:a17:907:96a4:b0:b04:830f:822d with SMTP id a640c23a62f3a-b24f568a6cdmr856877566b.63.1758422595233;
        Sat, 20 Sep 2025 19:43:15 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b28be3fa38bsm224619366b.46.2025.09.20.19.43.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Sep 2025 19:43:14 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: cyphar@cyphar.com
Cc: alx@kernel.org,
	brauner@kernel.org,
	dhowells@redhat.com,
	g.branden.robinson@gmail.com,
	jack@suse.cz,
	linux-api@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org,
	mtk.manpages@gmail.com,
	safinaskar@zohomail.com,
	viro@zeniv.linux.org.uk
Subject: Re: [PATCH v4 00/10] man2: document "new" mount API
Date: Sun, 21 Sep 2025 05:43:10 +0300
Message-ID: <20250921024310.80511-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250919-new-mount-api-v4-0-1261201ab562@cyphar.com>
References: <20250919-new-mount-api-v4-0-1261201ab562@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Aleksa, thank you! Don't give up. We all need these manpages.

I see you didn't address some my previous notes.

* move_mount(2) still says "Mount objects cannot be attached beneath the filesystem root".
I suggest saying "root directory" or "root" or "root directory of the process" or just "/"
instead. But you may keep this phrase as is, of course.

* Docs for FSPICK_NO_AUTOMOUNT in fspick(2) are still wrong. They say that FSPICK_NO_AUTOMOUNT
affects all components of path. Similar thing applies to mount_setattr(2) and move_mount(2)

* open_tree(2) still says:
> If flags does not contain OPEN_TREE_CLONE, open_tree() returns a file descriptor
> that is exactly equivalent to one produced by openat(2) when called with the same dirfd and path.

This is not true if automounts are involved. I suggest adding "modulo automounts". But you may
keep everything, of course.

-- 
Askar Safin

