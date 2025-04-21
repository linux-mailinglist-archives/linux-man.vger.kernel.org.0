Return-Path: <linux-man+bounces-2794-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81780A95779
	for <lists+linux-man@lfdr.de>; Mon, 21 Apr 2025 22:43:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71EB3188E160
	for <lists+linux-man@lfdr.de>; Mon, 21 Apr 2025 20:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CEA71EF090;
	Mon, 21 Apr 2025 20:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F4AjPCFV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D0D1E0E13
	for <linux-man@vger.kernel.org>; Mon, 21 Apr 2025 20:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745268185; cv=none; b=VmSVfQE9BxV0k1B/vYwSeRI+j5UfWBLAramZFnKjxqfUhguIAJNpe3BbMeIYLi/kJr+xCa/0XyReCBiveSC0S06yfxsv+XGL/uR+U/wVDBwDUEYifA2sQyjcM1AlHsnRol5QrGV8mAephCOGmgQgkFwOeYlaZx5e7GIhgHu7Pow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745268185; c=relaxed/simple;
	bh=whTYDBLHi1BbJ6MGxSjXcMvM1UWpb78vXrdRxT6a6SE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HEuXWYagkVopKOBQqSgWfvm+ZIEfXEin2C8b7Y9ZE7939OVCPouqCx6FMOBXgW9fX1VEe/d3f72StuGjJjrH2wIVYnCndfa+XSLpS1KsB3IyrfPMIXUSluljpip1oaeQ5YfqCKSiET3pHqGVnZw+ieOgnsJDB99DFWAfgKcDacw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F4AjPCFV; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-223fb0f619dso49354535ad.1
        for <linux-man@vger.kernel.org>; Mon, 21 Apr 2025 13:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745268183; x=1745872983; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8gat9jW9HITLNRFd0ULKHuVi9kkOSHwPehTcoX5S4iM=;
        b=F4AjPCFVbt4yOp7x7/7/6RnGxOXgwQplFYttZVDgsoivlXF67T1LMpmFCarF11dr71
         RrNKquiaFlGdXkjpGdxRo1tjrS1EwEuRe1Ihd4FbPQRgraILcN+QAnu4Gti6THco997k
         47Ay61LQIxARot0XxnC7fEA7t9au9X109zHEVRk1IVayjEptIThK6gTFKwKJ10rltE+t
         FnQQcRjUGBCkQQWFAkDIbEg5R5fw2bVBxdFD2OPC9k8/CHmanUvvXgwdwr992r6lslTj
         rhMPLvquu8uu+nMZvaju5Opqcf6erCZqbhiTytL5/PMaXBQckm1mmyw5j0xVtkzv2YBN
         x7IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745268183; x=1745872983;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8gat9jW9HITLNRFd0ULKHuVi9kkOSHwPehTcoX5S4iM=;
        b=INhGMFHG02KrlYTDPWvldb1OeyuC2WDV3RG3w0oG+pXamnXt2r7qumKkLUTvzjkf/Y
         ZMrHMisGKcF6ItnDrFFBWqfoDoIaFOBIRklMOqqQ3A5X61KwIIo0SRmR1odF495CZLEf
         trVq3Uhw2oHfR/c55KWdyC5Rqve04cWmP4nmX4Ojb6ImtyOX8saAG8QQPCV707O+KboP
         z0Q2tBpx8piDRxvTAO/Phlo+V1i9x+gu4IluqXz2B8DyCJH3yXZ+98/sQeoeX7OM1gfo
         ThdcG1zoQoaJpmgBxo97kIDS68Arru8EEcgE3HT83zOs+Fct6aYNAnSEtcuG9UP6xqYg
         lPYw==
X-Forwarded-Encrypted: i=1; AJvYcCWWnuK7QmRMgIPn/ReLwsDJfrMSlT74buvUaGGbCwGj2v+4JYyFh8RuJl/y4FRCtvDNAZQ2qJHHFEA=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxso7y4H+7qCJ4ztQpYFoQ+1tD3DhXMly7y7/T/hZ26YvDixvT9
	npUYHNN0fiCTmiyUMXZJDtUrr9vL0MUK79KNmvSd3bKGkHzfnr9pxSy+kg==
X-Gm-Gg: ASbGncuS/dkJwwdfa3GX+fwzePMFmrebTHQwtwL4m1KtBRsFRYRCQEarcqcgb6taT2v
	8I3kKYduLfWG3j83fdrh38bNETiRwWFxnGOiWDk7oS9117O4ruwVsjkdHfTfJo31EyKMIn2ugER
	Gmo7zyujiHbuf5NX8/07kDF6+sq2v20az0SK3gGXcqgznpt/HeDSiX/7f1lGFnLdipRMsL1D2WJ
	rNUB4dusvkqxx2wDOQEqxK9BUJIsnqhz/w5ee8oUBDhYAi4VbrAulIZe2NgWi2oZfjBTR06VteI
	H1s7esKeveyVtYCT66SaumTTWzc71wNVnWcu4/2c1GF3RLU=
X-Google-Smtp-Source: AGHT+IGLuhQuiHqRmqohEBDBOnfZrzJryHuc6IFFaFzPEOQDPQx0S6018b1GO8bz+zWCQGBFDJ82Ig==
X-Received: by 2002:a17:902:f60f:b0:219:e4b0:4286 with SMTP id d9443c01a7336-22c535b49f6mr194074695ad.29.1745268182943;
        Mon, 21 Apr 2025 13:43:02 -0700 (PDT)
Received: from fedora ([138.199.43.84])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50bf1145sm69781735ad.56.2025.04.21.13.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 13:43:02 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: libc-alpha@sourceware.org,  linux-man@vger.kernel.org
Subject: Re: dup3(2) now specified by POSIX.1-2024
In-Reply-To: <edcoajvvdnxi6e2rwbz2zfhj7lysbrhy4rafkew7wu2e3s36gv@rw2jkot3eqvh>
References: <edcoajvvdnxi6e2rwbz2zfhj7lysbrhy4rafkew7wu2e3s36gv@rw2jkot3eqvh>
Date: Mon, 21 Apr 2025 13:42:50 -0700
Message-ID: <87ldrtdz5h.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> dup3(2) is now specified by POSIX.1-2024.  It should be provided when
> the POSIX feature test macros are used.  Are there any POSIX.1-2024
> macros yet, or is there any ongoing work for that?

I started working on conform tests for ISO C23 [1]. It is my goal to
work on updating conform for C23 and then moving to POSIX.1-2024.

That will involve updating the feature macros like __USE_GNU to use new
ones defined under _POSIX_C_SOURCE==202405L || _XOPEN_SOURCE==800.

Collin

[1] https://public-inbox.org/libc-alpha/20250413231200.549774-1-collin.funk1@gmail.com/T/#t

