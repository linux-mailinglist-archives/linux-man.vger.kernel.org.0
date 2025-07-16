Return-Path: <linux-man+bounces-3273-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC8BB07B09
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 18:21:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45515166C86
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 16:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E293628A1C8;
	Wed, 16 Jul 2025 16:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="rjQ2PvKW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E23481CD
	for <linux-man@vger.kernel.org>; Wed, 16 Jul 2025 16:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752682872; cv=none; b=SesvmLx/El2HvpciPVGiIRB824RftbYZBKIc8JJ4m6qPrCmdAytG7c/RONq+CXWrQHCrPZ+3iGvgXVhQDpwpSiO6rC8aL0LaBznL3rvahIjojAYJ42X9MG5VfbHge/QEtteX7RUMhMk0/U53KQXXIEIWOljvxP1Y2B8XIP/hbis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752682872; c=relaxed/simple;
	bh=QkyodeshPyId97gE2iZVgZjsnhrlZrqU7hz/iJWzaa0=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=DPe8J/6kSxTSEam7gVo0kIqxOtYLLUyOi/AZ+HOHSUsnpUhw36Glf3xudkF/n54uJ9ri4DYmGjyI4r7WxI2jq3ZgGc3iPIxDsW/Ga2D2h01aQh0HgDQImcqF6esU4h8tTvgHB8/xsOqgOVh7PvMZOjknaQYpsaIQms/7whzMM/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=rjQ2PvKW; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-3122a63201bso104680a91.0
        for <linux-man@vger.kernel.org>; Wed, 16 Jul 2025 09:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1752682870; x=1753287670; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QkyodeshPyId97gE2iZVgZjsnhrlZrqU7hz/iJWzaa0=;
        b=rjQ2PvKWr2Fqq3bSvRwqhMJiHmPm3T/OhiJDefPqT+5fQ8r/en8i1+6/Snqt68s3j0
         dIir5Ps9EpKDqypYIeL9d59iyLVZ2YO+v+p9PW4LqlX1wgmtSW9aMgRm/gWadMxzQQNX
         TEe4dTcJ7pCX8tyIh+va7R5Qt9DtrDsbn0FR/LjbGteyx8LWisG+sBuy0wbZwx6p81Hy
         FvEkJ+gh/G00DFxMLtyWNdY82ViMahkUiEy/GKszd5Ats/kmgOv9mewegoUPFc7hqVrd
         HqPyem2jETQYSaHMRCCm50Hf3GVScHbT7DK3KKW8a69Jl8r+OECy5Fs2hCrgubfVFUSb
         9Jog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752682870; x=1753287670;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QkyodeshPyId97gE2iZVgZjsnhrlZrqU7hz/iJWzaa0=;
        b=E7cRIXJfk9BRrhugCqnGya5zrCte4RYs5GK0OfV1op3X8zCNq66cTUqzrsMiXKFtWW
         iaDA6/97ZUjdgOeViNWeePKohcz11rBZ557Oc6OYJtNkwzIzesKKnXegJR3+ujuiHVww
         X2ZfVgYGuQOraI04LqVduOnkmLFBCvwuY0IErn7A6UDwldFHAmLSrc75UCwPr+HrF1L4
         kOXwPKNwGjbppXL17H3qUtZI2B028n2byyYhgtgfzOUeHWk+EafvkdaPtizJ1HH5pt0J
         R3Tljcy1RKRZu6xntuVvAFfYpcC6b/PfUNM6gxS91VIZOyileuKhy8/OGFUB8z2RJszM
         822w==
X-Gm-Message-State: AOJu0YyO1ChnAkB+PWd0JRZx4ytxdmbzf4Qt+RoAl/4oRH9ALNEMOpT8
	FmmQJc5Og3YSf6A2pGPkXRN8fc7AaduZvz9R+magsi1ezZoIpZ5caYT9RkO/Q30gUbHHissWjv6
	+j7QOn4hdT+TLaG8R0HjNow78zEsJVNbmUzC2LWUQQq6J0neYMS80l+WV33c=
X-Gm-Gg: ASbGncsW1tBvBzZJRurb4pxeVnyBbhO8yCT54f3dcl8jZ2o1XVDRGL9HJJwC0dVCqnm
	hbwn9CixMEzQbHVNaAAx3AFKTWBmUYc6cSFu5VKim3yP+89uC7wqPkNxul9qYur7MEFNxwdxq+X
	sp5evMqAUMNBViEd4QlljBT4vDKgzAS6wWOoubPn5l5pUjzOKFtJnSCYJsl/AZBRPgkKGaFmgdH
	lHV
X-Google-Smtp-Source: AGHT+IHLZcZH3Sivt8FO3uPTxe9zukbt5yxgB0WotSZfCa89Yvp5Clcxutdde/OzrE5rAXFz6OrALwezj+7+dkRS9UM=
X-Received: by 2002:a17:90b:2683:b0:31c:913e:b121 with SMTP id
 98e67ed59e1d1-31c9f4c477emr4154128a91.19.1752682870342; Wed, 16 Jul 2025
 09:21:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Wed, 16 Jul 2025 12:20:58 -0400
X-Gm-Features: Ac12FXzoa8AywobqT7SQzkxpg9B3BT2aEMHCAXNkvuzCtaUS3wNdpw3wasERXxw
Message-ID: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
Subject: drop ia64 from man pages?
To: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

aiui linux 6.7 dropped ia64 support, but it lives on in the man pages
... clone(2) in particular has quite a lot of ia64-specific text. is
this intentional, or should we start removing this stuff?

