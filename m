Return-Path: <linux-man+bounces-2773-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B49FA89C91
	for <lists+linux-man@lfdr.de>; Tue, 15 Apr 2025 13:37:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B869D3B0035
	for <lists+linux-man@lfdr.de>; Tue, 15 Apr 2025 11:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8401528DEE2;
	Tue, 15 Apr 2025 11:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dn/bBpNR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AF128A1E3
	for <linux-man@vger.kernel.org>; Tue, 15 Apr 2025 11:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744716868; cv=none; b=gz75h/AHDFD4I7bl2yAk3/uCmoQ07jyLkIdYZnaYUFwa0tGvv0wt3EFjHyFYjS1tVsEwM19KVgw2Taf9v9jc1d8x7aU2bB/k8ac0grvylr11+ul373hLwnHckOcbAhembTDeDzkFDWNVnOyvdCJ2aouM4ricJOtkm/GaO7MeAHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744716868; c=relaxed/simple;
	bh=FkoqHaRGX+tC2aaQlA6acPbDRrIH0DumyXSvzvU+Jr4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=HcctFtwfYFCljMqciD7AfcRmhZB5/CvdiZhaRY2YSkXZgNRjIeoxX3zN9XRPi4o946EI0gfEWHR0cRgIBkQg2JXr/yU5I+MSS+AG5qvBRa7BVwbc6+SEjkyTS94U0KGwyALRZMVY9G+yacD0Lc8kYGd3dYpHMz4r6dyiMScwrzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dn/bBpNR; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6fece18b3c8so52111747b3.3
        for <linux-man@vger.kernel.org>; Tue, 15 Apr 2025 04:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744716866; x=1745321666; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FkoqHaRGX+tC2aaQlA6acPbDRrIH0DumyXSvzvU+Jr4=;
        b=dn/bBpNRfcSfWsDetLPP+pIpo6+sfUD3a6uf3dhioNVNzlh5RjL62iAyHQv6qm8Pqt
         i5wwGvTYSSBu9zGI+UiB7bHpoikREX+TOp8oWLHF2Il34zSLQ1Kwz68Oe2DAO48JR/w0
         o2HyhNKrJIY+f6PHJ6nbSHjued0rNwPPi7luM/BQEz+1Ak0g259o6Bzy4uYFfTuqjJb+
         jnmLCW8PCDDWj6Rpr91HFIxP5Nt0rwfAK+j3Sg8oVu/e/0BMXF0LsvhX6QD06lfFmnpf
         Xe0ukRwy4p6jZ3YqVqPr2d4K5/LGNndJXtjNBhap3Mz0Z40tVtt7U85+3+8UErADpmhX
         V4QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744716866; x=1745321666;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FkoqHaRGX+tC2aaQlA6acPbDRrIH0DumyXSvzvU+Jr4=;
        b=gSg00LFo62j5hF/NTb4OMhw9fGWBiMX2r5bHGFtiILh9KlLUOdrWv3JLNjca21ItRz
         nqqtLWUzefNO6MPjXpqCMIl8V15Bcd0unJBUhwxl3r4AObd0PkrFYro1romn+pPeN+Mu
         XE6KfgYTNjg1bMJ9byciAcnjcfMOf1ZdLDNUOy9QrCnI08U+YVltGRIwQC0uXg8bH1oi
         kyJYRdddS2xswPXsXcCANIJCoupUWNhH8juMNtOyKYQBCmBsT9O65pSiNkDZcZ1B0CFs
         SYGOZbNBOAXqltGO1z6SYUCj/FUrRKeGrHjvksNs3NcGlGShPj0WLpdt48RlZalKsKqz
         hCcg==
X-Gm-Message-State: AOJu0Yw4YM9zTkpwO1lPoX9wUqvuLk17LOSWs7XIJut27lBL6fZBx0aB
	hUNcuw9Y6mFO92lVHuhN3EroMd2NpfeTgmMkeHN+QMPRHzM0mUFuxDMqcQtzew/ZDi+wEBVzWRC
	GtrJCbbVcqAGs3vgBjiLw7Ufme6j6WfXH
X-Gm-Gg: ASbGncvSx96FLyKp08dJwa9H96YkkmRX18Lc1GM+PU15WN3GxZx/DjmiVLL5DLjg2ft
	pIs3eQpa/8dN7X7Uci+l8LwtFlZcO6dzGjNc8Yv3d/1tmewgvOQXd5U92LU/UGC59iILk9x4xwH
	s/7jOTI3C7wT0FA3pmhTNHgg+d
X-Google-Smtp-Source: AGHT+IGXX+jMQrrq8qau9myWrn/ZEM1EyN8TyBenbk5TkyBaR6HQJg6E61U31YsPYM+8Wc2zLln9VpWLgvgKTJiCBsA=
X-Received: by 2002:a05:690c:3347:b0:6fd:3743:1e31 with SMTP id
 00721157ae682-705599e254emr266484247b3.18.1744716865835; Tue, 15 Apr 2025
 04:34:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: hoodit dev <devhoodit@gmail.com>
Date: Tue, 15 Apr 2025 20:34:16 +0900
X-Gm-Features: ATxdqUFY9mq_7Ynb4kJk3Pa4yvbE-1mAMih6z4hIk2avO8IgPuARHlHcQhyWDAA
Message-ID: <CAFvyz31Em4f7AQRDNJ6gtVBoUj1kQA8WZCGcs0EZngCZosf_0w@mail.gmail.com>
Subject: clone(2) man page CLONE_NEWPID and CLONE_PARENT can be specified at
 the same time, also CLONE_NEWUSER and CLONE_PARENT
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi

In clone(2) man page ERRORS section said EINVAL occur when set
CLONE_NEWPID and one (or both) of CLONE_THREAD or CLONE_PARENT were
specified in the flags mask
but in my test code, it can be specified CLONE_NEWPID and CLONE_PARENT
at the same time and works well (not in CLONE_THREAD)
In DESCRIPTION > the flags mask > CLONE_NEWPID, it says that it can't
be used with CLONE_THREAD only
So, I search linux github to find really CLONE_PARENT can't be used
with CLONE_NEWPID but there is no logic like that
(but I found CLONE_THREAD can't be used with CLONE_NEWUSER,
https://github.com/torvalds/linux/blob/219d54332a09e8d8741c1e1982f5eae56099de85/kernel/fork.c#L1815)

Similarly, in CLONE_NEWUSER, it says that "This flag can't be
specified in conjunction with CLONE_THREAD or CLONE_PARENT." but it
works on my test code with CLONE_PARENT
Also, in ERROR section only mentioned when CLONE_NEWUSER used with CLONE_THREAD

I think CLONE_NEWPID and CLONE_NEWUSER can't be used with CLONE_THREAD only.
If you think my opinion is reasonable, please let me know. I'll make a patch

