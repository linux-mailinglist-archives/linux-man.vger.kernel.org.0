Return-Path: <linux-man+bounces-2721-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3047A78B90
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 11:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E7A23AB04B
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 09:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3965D2356BB;
	Wed,  2 Apr 2025 09:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=szeredi.hu header.i=@szeredi.hu header.b="A1F6fpMz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420BA2046B7
	for <linux-man@vger.kernel.org>; Wed,  2 Apr 2025 09:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743587652; cv=none; b=ryCFKD5VzLzOwMPJZgWuq3s088NSGu96Zj2GpalMdHLfRlzaJ/LG5X+dBBAq508oyM4n+xtAgEBeUyWl0g5VvaYYkUQdLPrGJ3nltNoDvyuDx6uvmAponVSwicHwp/hRzhvRHuUcVfsklN201P9Uyf3abl2j9V3slvmLACIwt+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743587652; c=relaxed/simple;
	bh=QsGJocePWgEys7ERZDjJSJa3c7y7WK15axnvcomcXCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tNJg3o+/dhgiMaL4eK5ZkM5Yrl4/hDuLQzKcHwZhqWXmnTvOFG0tb/2azbOKh4nbyifyIxTAxdBfQvQ8v3nYWLVHj4RnHYDh8s92fj5qXg5El9WOS4HFQoIx6D6b0FrdscXMbnNWpp8nlKwPgHHclDQb0Y8vxwwmaB2Anb+qUXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=szeredi.hu; spf=pass smtp.mailfrom=szeredi.hu; dkim=pass (1024-bit key) header.d=szeredi.hu header.i=@szeredi.hu header.b=A1F6fpMz; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=szeredi.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=szeredi.hu
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-47688ae873fso66193681cf.0
        for <linux-man@vger.kernel.org>; Wed, 02 Apr 2025 02:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google; t=1743587649; x=1744192449; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QsGJocePWgEys7ERZDjJSJa3c7y7WK15axnvcomcXCY=;
        b=A1F6fpMzKNDx+kLvV7eLHoxDeAf5EvfbupJlYujHidxJUyIEVZAV++WBYXgdUS9/zZ
         5k3V1EMfJQ5s1snPPWXQR/sHq/A+0J5Bp5m+Bq2/IdYlHuBKeXZSg7Tl8kNvpoNsvcED
         s3UKPOmN5c9rs12+1F8xdCCqC5Wr9Rh/6YsXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743587649; x=1744192449;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QsGJocePWgEys7ERZDjJSJa3c7y7WK15axnvcomcXCY=;
        b=ZJ2M16qN9Sg7wip+pXeU8wmr4phtq4e5ypWrFafWLu+aNv2Ax1IkA+9McpureywiZB
         /yHBlLNOIB4K9BE0qe8ChJ9DaqaGkhc8ojFz7SjGRr/u8C00I1EY6LwFjJOo7Hb9bING
         JzFyxE+jDkwcnLHkTMc9gI7VW1r3I4301H4OASYyW2oKiLGZxrPfzESgjgoSNv0WvF4Z
         vWdJG/y3+8kiJ8N/t6BSykX6/k4FIScNPiz6AxtG06pmA2ZypUaGCtEylmKENm8aGuBh
         RS0VjLErPInYd4hwIGGFB33Ek5KAxt8VK/aLe6YPqgdyzRpzLF6FZrXNP+OMrgRQ8Ao3
         P3bA==
X-Forwarded-Encrypted: i=1; AJvYcCVS9X3Ef9w99uPchPVRd2bWxNzLCy5vT6Jx7vUJdtvxW5ds3Vxd23cg/JGTEiG+CfZm8ZHe7Hf6heo=@vger.kernel.org
X-Gm-Message-State: AOJu0YzsPv0jxiTllCMJVEvQqxo6LWadUThpR8fxOYojZf4jYQWtxpuu
	UoEJQylwPhYdMrjjkbs0DAeMdATYQv6R8fixyVT3vaZJ0WyzLinB3FdeVo4nC/ivO6J5RLlUHDS
	TzPUqgsPLkmqdjmb1If0pg6IAHLl+cSwArhGnhw==
X-Gm-Gg: ASbGncsIUQfouRXU296dpPXoZZyvOYUR6kApO58LtgtyJbP8GCYGxKhSKKH3FkV4p3R
	VcpqGdt3j2l0u74VYiReLiYpWg7BOJ7CkWBnoN8IW/He2YDGjvwZ9qo0Ubs4hcgXa9QTFrcxV16
	PpNHOaFk/QkLWJPsEwoKV45U/k4w==
X-Google-Smtp-Source: AGHT+IFO4yhLjmSj4bog7EudUIEUJHYM2bkoDh2fwu/pLE6OmTeNQhAHgR7KchPODCgXJgkBK4tzB2tc+3+4Jj7rlHw=
X-Received: by 2002:a05:622a:5cb:b0:476:ac03:3c2a with SMTP id
 d75a77b69052e-4790a03cb15mr19871671cf.43.1743587649097; Wed, 02 Apr 2025
 02:54:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250401194629.1535477-1-amir73il@gmail.com>
In-Reply-To: <20250401194629.1535477-1-amir73il@gmail.com>
From: Miklos Szeredi <miklos@szeredi.hu>
Date: Wed, 2 Apr 2025 11:53:58 +0200
X-Gm-Features: AQ5f1JrrY2G_4dy14qgiJW_ZK0jwjneRAJRt01C6TGC-5AlCncMyPVziWoQ2nZA
Message-ID: <CAJfpegvsiRZ3F-g2WNtOhyN5GiuckBke580Ne+rX97Kmgfte2Q@mail.gmail.com>
Subject: Re: [PATCH v2] fanotify: Document mount namespace events
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, Miklos Szeredi <mszeredi@redhat.com>, Jan Kara <jack@suse.cz>, 
	Christian Brauner <brauner@kernel.org>, linux-man@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 1 Apr 2025 at 21:46, Amir Goldstein <amir73il@gmail.com> wrote:
>
> Used to subscribe for notifications for when mounts
> are attached/detached from a mount namespace.
>
> Cc: Jan Kara <jack@suse.cz>
> Cc: Miklos Szeredi <mszeredi@redhat.com>
> Reviewed-by: Christian Brauner <brauner@kernel.org>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Reviewed-by: Miklos Szeredi <mszeredi@redhat.com>

Thanks,
Miklos

