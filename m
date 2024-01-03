Return-Path: <linux-man+bounces-336-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C400782268D
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 02:29:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 628EC1F23025
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 01:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811ECED3;
	Wed,  3 Jan 2024 01:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IQDZuHsy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9778ED5
	for <linux-man@vger.kernel.org>; Wed,  3 Jan 2024 01:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40d60c49ee7so51870635e9.0
        for <linux-man@vger.kernel.org>; Tue, 02 Jan 2024 17:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704245360; x=1704850160; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZHTfDLxoBqGNRnaaxbB8dN+q97Ti/ZlnHXnbklZqIYs=;
        b=IQDZuHsyI7SsAbtJyf/THXiFgUca+1YDY9ms9zR3JPfXFRLdgshMJqaaOpTvYKwE7H
         +QeNcF4nuhvDHsBDEkJp7h/+WXS0GURib257wkvegkIOB+/mHwEvxdlvBtKHg4fqoe5R
         6GAnkmGbEUD5HJfsrYttFWvKf2lvFWBzm4F1HgvRexqbG/vlzyyLcpVLHGEKvr/FKrkT
         OPokbG7O1ELB7DSeSwE2Mp4vUFFRL/0XYTAaMgMnxLPYtGeKnZN+bU4gx+5cOBbComYq
         ZH9zXzrhnf8hnWKXGthDEFiTLYNfpg0wmEiTw3bLausszRmbAw5eg5T33ET02VVPXdd0
         rfxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704245360; x=1704850160;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZHTfDLxoBqGNRnaaxbB8dN+q97Ti/ZlnHXnbklZqIYs=;
        b=tPSo/5tEZF7tboyBU33fnYWNK13FslWTMHxHJy9ucq8BTrtcefMDgSemD/5C/6o3RX
         1bk5EFhDomFt7hxtCPvkYxOmW+djw1tp+MtAglM/YdipnSEXDSV5HoDEiNZyhYm048w2
         k7aePeyOB/FVWpqxflE9jQFfZWy+JDI+YwUqE6u673YD2kxE5X45kVeWmCutgDOFN/Ly
         Cj5FIN9PJvv81ZcDCTwnTGSnFoEnrow0neqjPPxCCkmaQ0JhyYdb0jAG1IBLX9WJbciR
         vsslEx4tEl/DOvyZjGltRU4GO34BeRB/hWAPfWJcrPb4CWn+4gWczjef3f+VVEQbkGxR
         ypzQ==
X-Gm-Message-State: AOJu0YyiOJtTPFHu1VsOBfToiixW4I2jYTlaVyIWHDogA0uXcYUAfrtM
	TOu6tP6oS72rwAEWiv9CuUhvwl5NzO1US0xl734P2pjoCZs=
X-Google-Smtp-Source: AGHT+IHss6WjRUpIkNvx8EUGJ8PsyDniACrDLBNIU9Ptafv3A78nvAi5P0sDbxDYXEuZ4npxO84Mhwco95/JNeAaHUs=
X-Received: by 2002:a05:600c:1d27:b0:40d:8964:7eb4 with SMTP id
 l39-20020a05600c1d2700b0040d89647eb4mr1801627wms.35.1704245359978; Tue, 02
 Jan 2024 17:29:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Morten Welinder <mwelinder@gmail.com>
Date: Tue, 2 Jan 2024 20:29:08 -0500
Message-ID: <CANv4PNkqQBPn_oyfdYZfOck-7gGwzP6YPPA9hDaiaJPUj+c3xw@mail.gmail.com>
Subject: frexp man page: FLT_RADIX vs. 2
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

A very minor bug:

The main body of frexp's man page says the exponent returned is for a
power of two. That agrees with, for example, the C99 standard as well
as https://en.cppreference.com/w/cpp/numeric/math/frexp

However, the sample program in the man page uses FLT_RADIX.  The value
of that macro need not be 2 so the man page should be changed to use 2
directly.

M.

