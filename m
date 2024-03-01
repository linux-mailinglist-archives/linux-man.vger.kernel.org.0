Return-Path: <linux-man+bounces-492-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDFB86D852
	for <lists+linux-man@lfdr.de>; Fri,  1 Mar 2024 01:28:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E53061F2352D
	for <lists+linux-man@lfdr.de>; Fri,  1 Mar 2024 00:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36586368;
	Fri,  1 Mar 2024 00:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b55wFwiU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B53EC5
	for <linux-man@vger.kernel.org>; Fri,  1 Mar 2024 00:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709252905; cv=none; b=jT2IK7C6C7YbvMN1xLE2Xf0RvYeJ3NEKg+brps407K0+1EvxmOmP2Ce+lTbjn222lcSvFie3Z1m0Vs+8YiLMcXMNlXxh/PvgHN80S4XOX6fR7w6IPwRXyU5gQrB5CVgaKqIcgTFgEN3wJtsZ40ih3IwQDoVvQ9xPsTgDDMCIPd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709252905; c=relaxed/simple;
	bh=DNNARZq+WfRzuEReupni1qj0/L7WWlrxPTkIluzRF2U=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=CcKwgBaiiIxEO/r9G68ZWGGBtYhV3tx1D2WTiMjBtSYoEHyiB5QiEX9iMIXKSRpEDxm9fV6QVMTZcY5oU2dDzokyr3R3aaKhrD9H0p/LYt3VB7a9xy+rDka7tCJ8omSxMr9ToVy0zJfEQ9ex7lbNF/snC2UqInGmaCJXbyAsVOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b55wFwiU; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a28a6cef709so240929166b.1
        for <linux-man@vger.kernel.org>; Thu, 29 Feb 2024 16:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709252902; x=1709857702; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BeeBp4e8EM03KRGp4pT73frilJ3gL+mr5bQpxMDjIKw=;
        b=b55wFwiUgdLPb6Yg1zqw+u1Z4INTka841ilEjGaFiZR1iLvilLMUYf3z5Y17g9wh83
         zlWBdd96vTjwDALtIADxDD102Egt4lmw8MVVliExLk/oxELOHFpxJgmX6Hcos6m31fsV
         sulx2T0qm2YBwh2n5RJmTlEknmuX4a6RDX1vO7NIf/UXg2U3gHBREyJ6JdCWIjJe1Xuo
         ef/5/MN2ZHdjGQf75JQg9orGs/k7hiqtXkpL//IqfPq3+Nv98AUbaXyFBKjZiNkq/Kgg
         YdDKY4zgPUD8nP+ji3hS5mBYGhyIiNSS5GTovj4Rt3U5CE+ZBg9eSc2OnioNEQB5XXI6
         WQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709252902; x=1709857702;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BeeBp4e8EM03KRGp4pT73frilJ3gL+mr5bQpxMDjIKw=;
        b=hKVCPEazGPPB4SOCqm1N7urfYz9ErJINVhRDYmuJBV2z3twDD3NbYJom3aKSHKcz3/
         1JL6jMyVKqvqpAUOo/lUHEfhuVvrBGXWEl8BRe5EXhSs9PZT/Qqg0p3RPuvkJzrQRotl
         Y2ac97v5K8B/vTMOLXRyuPuEUjNhobvgKFsIMkP/BtosIvOTD/bDflOsWMn4jnmHUcV9
         tS/J158+CykZhiEuHkbDipNJuIxprmJo4sk0he1zvpIZz3e2taPGTSgCYcPhSUBId0VQ
         OYRZzlwkCfpTSwU5qfmf6dUbxf77gaTSSWW3VIHJKga0duuH0SQ4e6sPOZpjMoFTTcVr
         nGdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWW7KUFUZZsjm4mkGd096qctHztQ11E3b11T8NvdgECbs4f9w6tJ8fZlrGyYjsjPAwzrKYzVDiII5dtUKktwNBPblsQgiYIPZsZ
X-Gm-Message-State: AOJu0YxihW7RpfcFo0zbIYG6lRXmiTzrC+Qjl9/ajWZ/CCxCKLL131sQ
	uj9Xenys5gkV6MFmyDqzToEkcG8duM6h13HNdteYfpgwYx75i5UK/0gqNE8bG+vGjpiQYUznMU7
	sMOIjr1DIVaIguGls/aw2n7wbD0eiPm52utY=
X-Google-Smtp-Source: AGHT+IErkKPwLujoTaMUfuuL6D93J+xJd+H/nSUKODPlrg0t4Wdc6Zxhdw6I2GaD0cxGBOpLh0PNkcu9U7FwCdsi+RM=
X-Received: by 2002:a17:906:2b15:b0:a44:56cf:b58e with SMTP id
 a21-20020a1709062b1500b00a4456cfb58emr164053ejg.18.1709252901611; Thu, 29 Feb
 2024 16:28:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Morten Welinder <mwelinder@gmail.com>
Date: Thu, 29 Feb 2024 19:28:10 -0500
Message-ID: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
Subject: Man page issues: logb, significand, cbrt, log2, log10, exp10
To: alx@kernel.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

I came across some minor issues in some math man pages.

M.



logb:
The formula "floor(log2(x))" should be "floor(log2(fabs(x)))".  (Or
...abs(...) if it's meant to be math and not C.)

significand:
The range [1,2) should be [1,FLT_RADIX)

cbrt:
The phrase "every representable real value has a representable real
cube root" is wrong.  In fact, a representable cube root is quite
rare.  This should be something like "every representable real value
has a real cube root and rounding it to a representable value never
causes overflow or underflow."

log2, log10:
These use, e.g., "base 2 logarithm".  Compare that to exp2's "base-2
exponential" (with a hyphen).  I am leaning towards the hyphenated
version being correct, but I am not a native English speaker.

exp10:
The man page probably should come with a warning not to use the
function for the time being.  The implementation is pretty bad.  For
example, results for integer arguments 3, 4, 7, 8, 9, and 17 are
needlessly inaccurate.  pow(10,x) is much better, but not perfect.

