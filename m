Return-Path: <linux-man+bounces-4306-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD43C7A768
	for <lists+linux-man@lfdr.de>; Fri, 21 Nov 2025 16:17:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 263633437A8
	for <lists+linux-man@lfdr.de>; Fri, 21 Nov 2025 15:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D85F2D97BB;
	Fri, 21 Nov 2025 15:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mightymoms-net.20230601.gappssmtp.com header.i=@mightymoms-net.20230601.gappssmtp.com header.b="NE588Ql8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128702D9EE5
	for <linux-man@vger.kernel.org>; Fri, 21 Nov 2025 15:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737877; cv=none; b=lFSM/n9PFHiVtCnVIsDyvbxu5bYMQUGG+dQxHSWJg5Mna8+1Uhgagi7q6A87jqEO8/qAuSmRSXx9UYxiK76XUN2vkNfISlMAmI9vkbWC3xxYhbkqjBHTmkg5CcDcFcLt/+KsCinNuAgEbD9VbvBzgln4GKCjKln1f1taoNSAh8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737877; c=relaxed/simple;
	bh=VCddq19QOya0xdABP+/78FXTkam55UR9fxLPMFXx4so=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=QNaQ0fTJeQsc6Ze02V8cHPvUlsACKYAha8OwNV3F0BcfmKrGYshHUMeleeDAOqn9chl5mnnNhHvmZKORCelNGPMiGk76bbsOp7FgIkHwXF9N45DtXpyeAWCgDlvvB2OVwBezvfs4KYQSjrEEqy33qfUIGSJbS0+OKB4w1YxdI1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mightymoms.net; spf=pass smtp.mailfrom=mightymoms.net; dkim=pass (2048-bit key) header.d=mightymoms-net.20230601.gappssmtp.com header.i=@mightymoms-net.20230601.gappssmtp.com header.b=NE588Ql8; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mightymoms.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mightymoms.net
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-7866375e943so17729107b3.0
        for <linux-man@vger.kernel.org>; Fri, 21 Nov 2025 07:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mightymoms-net.20230601.gappssmtp.com; s=20230601; t=1763737875; x=1764342675; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VCddq19QOya0xdABP+/78FXTkam55UR9fxLPMFXx4so=;
        b=NE588Ql8Q7IoVf5PC76PoSKhTRo92HE+EBXZpVDnOfiWERo/R2zStpYkBhU0GFlH6y
         lMSNhUVBsIEk95gtc93oE7rFnIJd4HxIPcmQVt02L/5janbjnnoQCD0LMLurk89WnA4K
         Ovw9vdanqScCUCeCHw+t6vy0wzox4Wmf2lQStsvwfhQ4joBu9lQQwKJ+xiAv0DfOxeYc
         /0Wghh7E9cdo5RPHxeXJMJqNd1fGM1F4O+STfF1mhzoRCOxdpdV74lnHpHmflyqUwQLv
         mouik7qAtJx8VMWHtG+4dZ7i0E6gl25PGp+W7Ixv8X7dMvWcuYxdUw9ES78yaLnl0naZ
         FXCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737875; x=1764342675;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VCddq19QOya0xdABP+/78FXTkam55UR9fxLPMFXx4so=;
        b=EbhmgswqZdvuFr2mUlykar8FOQ1Mxjmkjyz1h/w1Zr4jNal+cjk9ilYX0bHVIXWwBF
         bo11btJoTmcsdOgloxOc3mnrqwEc2JFyyCpGlVTfde1F3x9Elwo3mKhDU/rQ4Vgx1yTE
         pXC8qunxJIvPhrho29qQ21nOD85aIzrHHFjkPWoSctSl9FqBoq6XU6O6koeR0j3U1c3N
         6jWPQ2IQnSF7AX+HylWpICyg8f0cHylCfu+yQXdspUvelr2QqS40oIQAOh8UQkEmZmTO
         /p/6bbfGFWs3YYAPOL1LoOb2ijnVvZU8jh4ZEkvvqguzrUwbuPzjUeMRe8Ut1zDln1yL
         3lQA==
X-Gm-Message-State: AOJu0YxiiRrWv9n5TdCMKvliTASnClwYjHKDKcI41OPCUKcGknovsETb
	DQ0uDVawxL8oV+NWEibTXDlrrrPud0n/IjMfiYNjPrfNVuBfA2L3FOZ1OK8HY+OQv/rTzjd9Nvo
	xqx1Rme3RIe7TVk+Qf5W6zpS+CQXFrfQ3Xs3mANtw02/RTXiGr+eB
X-Gm-Gg: ASbGncuOk89896grByuRUGMY9YUOdFPxS2I8QdTI2KStX7ssHDbPgz7VuDItT97ol3H
	uTlpIf25dUthFf2akS2gEv7gukocfup+3mVOS2rw8RfCJBmXrIG4OX7E7SiR9NrBDd+faouxypQ
	POq2J0DecqaZv1eMWYKHYUzMk6N333dsBgOpz663gAcSHE69Urraz24mJGm7qwb7E11VDxButeP
	ooh2jI4i6Km1Cz3uy9HmayMXac915O2dIEqUHc2QW4Nikyh1M3CQTWAIhxR3wLjgVOTUaM=
X-Google-Smtp-Source: AGHT+IEvEoZh2FlI8YOs21ObHKNua0SLbvCnscSTyQEFdUQH4/hkF0HtwZHEPqEFuXjm67f208tOGmkd5LZis53K8VE=
X-Received: by 2002:a05:690c:d93:b0:784:8153:c61a with SMTP id
 00721157ae682-78a8b529edcmr20432607b3.34.1763737874567; Fri, 21 Nov 2025
 07:11:14 -0800 (PST)
Received: from 316179279012 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 21 Nov 2025 10:11:14 -0500
Received: from 316179279012 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 21 Nov 2025 10:11:14 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Emily Graham <emily.graham@mightymoms.net>
Date: Fri, 21 Nov 2025 10:11:14 -0500
X-Gm-Features: AWmQ_bk3rMuXmglSBw2Wuu5NaagRT5wR1fmVtPnDp5dt3-ncYxbqDvKIfWUM700
Message-ID: <CAJWoR_c3tjYf7nBWb_BGZg=G-RtW_wJiGS0V_YqHOZnAyfHZKw@mail.gmail.com>
Subject: Following Up on My Article Idea
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi there,

I wanted to touch base and see if you had a chance to consider my
article proposal on strategies for families dealing with adolescent
anxiety. Let me know if you're interested, and I'll be happy to send
over more details.

If you have already replied, I apologize for not catching it.

