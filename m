Return-Path: <linux-man+bounces-3473-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB33B29BE3
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 10:20:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E73603AD268
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 08:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EF902C17B2;
	Mon, 18 Aug 2025 08:19:30 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB65C283FC4
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 08:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755505170; cv=none; b=uo6DTKAztao+UnGeqtn5haBVQIDPpHf88/n+WUNdHYEZBT+B2mx10kFRHLj7jHiPSL83s57TIBgFIR59sc2Bs3I9tP2WUSohgGlyxbBtzBAu1aZH4h7R2DGw3Y4L4Cw/sNyuCRjpnulxUjfF4WYAx2ZNRnp0IX02AVHrS5eAZOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755505170; c=relaxed/simple;
	bh=3f+F4t+xC7KLlQNin4S4Ra2QneYyqrwflXznURcJzFI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZWCcpEFpuIq5mjxQLVvSYYBJyYAmImefrw1QdUNIPzKR9pLefuItlvGvS5Sjkb4za9wqcFk48VtUoifcBFMznCX/rba0tvXR33zEBEFMwcwV6KYrT2yXFIRBPDy7VqKaZTz0RjiX0z1G8UQ0zFanX5wuwVYuEQ079lUHl4chhxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-76e2e8e2d2dso2278808b3a.1
        for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 01:19:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755505168; x=1756109968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3f+F4t+xC7KLlQNin4S4Ra2QneYyqrwflXznURcJzFI=;
        b=YEsyvahNBsAY3DZyTTfbemPnQg2HjHlIlJxUXVw19nKfwQljGYfY21/9+cU8KKPwMf
         CuLo8dtacZe+GU3wE0fvgLbODTsrNwuDLo4ZRqZ9i4iA0a2+c84jz8nFHytDd+Kk6JB9
         Ku4l4fPn1LSEf1MJ4G0YW8rQ39us33m2fts0uqgJ1LH0S5TW80rNkojGXIBEzzPzlGvD
         2UKCQgeba4PT6wXZWRec5eYsL9QHwUOMBhBwPC2kSNPNSx745j/oMsq6EXIU4YwIj16u
         Hq9xbR4hDq5DIm4G3ScW12rgKFMWJDxJhvG/YqUvjBZLNim1OstCu9aRhxZHdK+suKF9
         L+9g==
X-Forwarded-Encrypted: i=1; AJvYcCU00X7tAh6Yrv43K4jfl6Srzn0BrU5wnr5HqDZKStdCvS0jDF+FatvBUAtaPa2PlAZqrU9qkfhV18U=@vger.kernel.org
X-Gm-Message-State: AOJu0YzClQ8tZn7EJo7G8IuFsdg+7EaWdmJjXuPyo/8kaNfT4PA6GWJB
	GdZjPUKagr5NgJ/oGRJ8OACbOKDbtLcJCsigUGPg+EedkiAjqGlYCu7u
X-Gm-Gg: ASbGncvaTvAjo2kjVsb7fSsploVn/VPhd/eddn32dhcLpndYhzgevEsCauNfj4mSyKb
	P/pJCNDiFGeRuqBoCbmBvmoqjnwMjB5VzlnEk4xKLk2Da64GUxtlTNbO44qLIjQVJ4XXeO/KgK4
	TisRPlhfl3abLUJMPBU4TzgyZOFd5wX+jvXkuZhidaigzZARZkWkwHmvIfX1bHAfv5StDbcaJjw
	/bnbDsUgOIcwU0+GyLzI7u64HqD3PrSRLixbq9xn5OeOrbnLZ1gYRD8/6QH4udzlVbP65fHZxIy
	0sSK9FTbuIaWjoxa1YRDug8jLNhQ2IatWMihOVsPKKrFCJv0c4mHLCwNeUPq7PTTH03nBFKps9E
	oaNrmxfwZPxzNhR3R46JCh6jT3G+3frUpGJQMHgvGyUNlXZe913e6yaRgl8Z5R1+i3aY7lKWcpN
	4Of78h
X-Google-Smtp-Source: AGHT+IESgpYyJu5Won4uAZpfGFoNqMBl3wu+wYDuneUCY20SiKAFlJyeSisqTAezVPYMficxH0180w==
X-Received: by 2002:a05:6a00:2353:b0:76b:f0ac:e798 with SMTP id d2e1a72fcca58-76e515645d1mr12807234b3a.7.1755505168044;
        Mon, 18 Aug 2025 01:19:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:382:7610:1712:989a:f101:bdd0:5b1a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e4528c7a2sm6488924b3a.39.2025.08.18.01.19.26
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 18 Aug 2025 01:19:27 -0700 (PDT)
From: Alex Yang <himself65@outlook.com>
To: alx@kernel.org
Cc: collin.funk1@gmail.com,
	himself6565@gmail.com,
	himself65@outlook.com,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as KiB
Date: Mon, 18 Aug 2025 01:19:22 -0700
Message-ID: <20250818081922.43305-1-himself65@outlook.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <jclco3uxvj7drormblgik6fsa36aemanyxqaf44mhaqgbwszye@nuhauaulbrlg>
References: <jclco3uxvj7drormblgik6fsa36aemanyxqaf44mhaqgbwszye@nuhauaulbrlg>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Yes, I think the related code is from getrusage in sys.c:
https://github.com/torvalds/linux/blob/c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9/kernel/sys.c#L1911

This code shows that ru_maxrss is reported in units of 1024 bytes, which means it is in kibibytes (KiB), not kilobytes (KB).

