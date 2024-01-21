Return-Path: <linux-man+bounces-396-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB2283568D
	for <lists+linux-man@lfdr.de>; Sun, 21 Jan 2024 16:59:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A300281F17
	for <lists+linux-man@lfdr.de>; Sun, 21 Jan 2024 15:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD2836B0D;
	Sun, 21 Jan 2024 15:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=colorfullife-com.20230601.gappssmtp.com header.i=@colorfullife-com.20230601.gappssmtp.com header.b="VyGAo2bU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15A3376F6
	for <linux-man@vger.kernel.org>; Sun, 21 Jan 2024 15:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705852738; cv=none; b=uKaU7KYeBBMw6mJKwGGj2jRUCoC9qykD7Tv8oB/zhdFdUNFZbw8lGF7e9kkZQfSCYU10x5XJ1zKD1i53gyvm5ONtGNWQZ8i9hCghQhfa0eJXVeWJCyvjHD5BWZAkAIPQMLESrHXR4Y2YbYJDnDk3f6m+AC/n1PW54mG0j3JzZ0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705852738; c=relaxed/simple;
	bh=whTFV6rClOs8bxqF1ty/cxBZEaK5vPHlLwIwLiq5LOA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=VhYLIO8Z2ktnvRsODSg7HECMz+u+rrpzlxp1sHWaqujTSch9eO9PnqS19xcsKXDogra/uS4nmLm34yG+t2T8YpBzwZfonv2vs7XiPb6KJsYj5XVw2iQnKayZY9YtwOwTHiNNLA2+fwtjnpYr5ye5fo5JCXpL/MCZGkF+/LuhrnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=colorfullife.com; spf=pass smtp.mailfrom=colorfullife.com; dkim=pass (2048-bit key) header.d=colorfullife-com.20230601.gappssmtp.com header.i=@colorfullife-com.20230601.gappssmtp.com header.b=VyGAo2bU; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=colorfullife.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=colorfullife.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40eadf705f2so650055e9.1
        for <linux-man@vger.kernel.org>; Sun, 21 Jan 2024 07:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=colorfullife-com.20230601.gappssmtp.com; s=20230601; t=1705852734; x=1706457534; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7qQkgM5m6OWdmtTdFapT6wKhE9CoiehliAPMlIoX5QE=;
        b=VyGAo2bURIILxX/k868kXUXQnMNczFwp91cDC8r5Ys3zby9rYcaladMG5qX7B6ovlN
         URStdF/ZlQ2f+LcWrfM1LsRMt8BnqrOw4Ehin1pNjFQXwXNkgcCJvMpO6LB1Vtxi3ugz
         JudFAD5ahXB8KeMBt0PCNficvMeAOpeI/wWZlTUXolVg1rNgvzcv/mwg2jFJf4NOBcuH
         2WNdUp8Z+fLlIB0P/lqbsx51YdB/DT5J/82ic7AFAZ6n3nB7H9F/Tu365M2jyBxlCqdc
         KFAuawbsPXNmy71buUd60yYSXZCFs8LLjFUPL996BZAZpH4gGMU3o4be/B/e1PIt4KHo
         8q0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705852734; x=1706457534;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7qQkgM5m6OWdmtTdFapT6wKhE9CoiehliAPMlIoX5QE=;
        b=VZOfXHrITk2Ce2K3Y83bQSWfpUqToNxojAnHI0A4+rsjTjz5X1otzxlgK2VvTt86E4
         97C47/Q6GZKYT9xqLWpAZJHxN6FWLdpEYS63Vo8gjPOX/TRZeovwO3WoWfIcVd3qxzyL
         NMRYhnwrLbiHYDPxjgMi1WRhiF0WX+SDWlFxkbWaXlOFDBrW2i4rAU6X19KFMafxKLqL
         DwAKJFS9wk8OnzNjZGVuMLTMmO5beP8rvvnCrVohc8M6jQint6hE40d+yhb8fDMrSs7V
         96Hio1fM8NwzdDfAqxX1z0wIyFOa9XULIwug1x6WwWi/3QT+Ri7YlMHZ+rI5QnaMp+uB
         XkoQ==
X-Gm-Message-State: AOJu0Yzi25KCRs+cYbaG8xiHcWDugUdiTLHHPKdjn8Ep1IqJQOtqmcYt
	ND8I+FLZOdNNIY1hKdJob0gglv5CXggv5hFiqB+mBvhbyksDmcTg2tmoAur+4isJLI7BI0cxA2I
	=
X-Google-Smtp-Source: AGHT+IF2Xaax26quA3ftKtb5KgcUz4dB3AeDI1QIeNjQKWQzDQjmITX2yCnGdcF4A6EiXAeyReLhUQ==
X-Received: by 2002:a05:600c:213:b0:40e:5d36:8bb2 with SMTP id 19-20020a05600c021300b0040e5d368bb2mr1549783wmi.70.1705852734009;
        Sun, 21 Jan 2024 07:58:54 -0800 (PST)
Received: from ?IPV6:2003:d9:971d:e500:6c24:cb20:5db:57? (p200300d9971de5006c24cb2005db0057.dip0.t-ipconnect.de. [2003:d9:971d:e500:6c24:cb20:5db:57])
        by smtp.googlemail.com with ESMTPSA id a16-20020a056000101000b00337cd6b1890sm9110400wrx.80.2024.01.21.07.58.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jan 2024 07:58:53 -0800 (PST)
Message-ID: <e18a3f68-3fe0-49ee-8a2c-3bae2604476f@colorfullife.com>
Date: Sun, 21 Jan 2024 16:58:52 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v3 2/3] docs: Add information about ipc sysctls
 limitations
Content-Language: en-US
To: Alexey Gladkov <legion@kernel.org>, linux-doc <linux-man@vger.kernel.org>
References: <09e99911071766958af488beb4e8a728a4f12135.1705333426.git.legion@kernel.org>
From: Manfred Spraul <manfred@colorfullife.com>
In-Reply-To: <09e99911071766958af488beb4e8a728a4f12135.1705333426.git.legion@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Alexey,


On 1/15/24 16:46, Alexey Gladkov wrote:
> After 25b21cb2f6d6 ("[PATCH] IPC namespace core") and 4e9823111bdc
> ("[PATCH] IPC namespace - shm") the shared memory page count stopped
> being global and started counting per ipc namespace. The documentation
> and shmget(2) still says that shmall is a global option.
>
> shmget(2):
>
> SHMALL System-wide limit on the total amount of shared memory, measured
> in units of the system page size. On Linux, this limit can be read and
> modified via /proc/sys/kernel/shmall.
>
> I think the changes made in 2006 should be documented.
>
> Signed-off-by: Alexey Gladkov <legion@kernel.org>
> Acked-by: "Eric W. Biederman" <ebiederm@xmission.com>
> Link: https://lkml.kernel.org/r/ede20ddf7be48b93e8084c3be2e920841ee1a641.1663756794.git.legion@kernel.org
> Signed-off-by: Eric W. Biederman <ebiederm@xmission.com>
> ---
>   Documentation/admin-guide/sysctl/kernel.rst | 14 +++++++++++---
>   1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
> index 6584a1f9bfe3..bc578663619d 100644
> --- a/Documentation/admin-guide/sysctl/kernel.rst
> +++ b/Documentation/admin-guide/sysctl/kernel.rst
> @@ -594,6 +594,9 @@ default (``MSGMNB``).
>   ``msgmni`` is the maximum number of IPC queues. 32000 by default
>   (``MSGMNI``).
>   
> +All of these parameters are set per ipc namespace. The maximum number of bytes
> +in POSIX message queues is limited by ``RLIMIT_MSGQUEUE``. This limit is
> +respected hierarchically in the each user namespace.

This block is about mqueue, not about SHM.

Could you mention the change also in the change description.

And: It is not fully clear to me what you mean with "respected 
hierarchically"

>   
>   msg_next_id, sem_next_id, and shm_next_id (System V IPC)
>   ========================================================
> @@ -1274,15 +1277,20 @@ are doing anyway :)
>   shmall
>   ======
>   
> -This parameter sets the total amount of shared memory pages that
> -can be used system wide. Hence, ``shmall`` should always be at least
> -``ceil(shmmax/PAGE_SIZE)``.
> +This parameter sets the total amount of shared memory pages that can be used
> +inside ipc namespace. The shared memory pages counting occurs for each ipc
> +namespace separately and is not inherited. Hence, ``shmall`` should always be at
> +least ``ceil(shmmax/PAGE_SIZE)``.
>   
>   If you are not sure what the default ``PAGE_SIZE`` is on your Linux
>   system, you can run the following command::
>   
>   	# getconf PAGE_SIZE
>   
> +To reduce or disable the ability to allocate shared memory, you must create a
> +new ipc namespace, set this parameter to the required value and prohibit the
> +creation of a new ipc namespace in the current user namespace or cgroups can
> +be used.

cgroups are an alternative to which part of the sentence?

"prohibit the creation of a new ipc namespace"? or to the whole sentence?

+To reduce or disable the ability to allocate shared memory, you must
+ * create a new ipc namespace, set this parameter to the required value and
+   prohibit the creation of a new ipc namespace in the current user namespace
+ * use cgroups


--

     Manfred


