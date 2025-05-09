Return-Path: <linux-man+bounces-2882-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E67AB1569
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:40:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B7393B3E18
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 13:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F022928C84A;
	Fri,  9 May 2025 13:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="07njOCJH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2513A211491
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 13:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746798001; cv=none; b=YzFN5N8MXu+NBGjmsD7RAj+RAjQMiNgKkL4SHS2ZawooZTrxpHb09rrLal0XfBdX3VE3cVJ6z4x3bQWwevSXono1YPi6rzLTWbsJJrCsuvZiTh35EcngZIi7i0EO9Wq3VmMuDT22QhANnry+IalP1733Bt5axemlMOEgj3WoaSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746798001; c=relaxed/simple;
	bh=Pf8WgR10c8+szLLAOQyr0kiqlBzAV/SPzwJVmiKY0Ms=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LvaWnp4OeaAn+V00c3mZQvO0ZaHdvTv54XakF7glK0z5B5hBd8B7h1TYXxGS60FdeTyCDZyik0+tvR/Qz+zGnSCRxbRwfW0IRvIV7EVz0amvmAYemeyLd/n6HyxXeb5AQkdIlMiSNcyRLPPOAW08Jml21zqLkkRcdqq3nCZYTvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=07njOCJH; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b1ffeda9363so1841606a12.1
        for <linux-man@vger.kernel.org>; Fri, 09 May 2025 06:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1746797999; x=1747402799; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H97Jg7L0DKKhpZlTkXwOsx07e4JE7au7Mpk56W/MvZY=;
        b=07njOCJHHRyiorUGVA+ee1BGOc5LURQXP18nsmsrWp4u9VpT5t6I1br7uPCsXwdkIy
         6FEBsx6z+x6qHALskwfw45+g6Ad+COV5p8ulWRL8V109fTYMQRH4eRufwufv5JhZl2us
         HCqKOyAiZkmveoLsjBajKspLmN7JrmCftAP0inmumFKiz9MQeRTeWJ6dovEvt76BC0RN
         oplae6WqghFCL3qApdcPJcz+EH/ywcRrOxe+NQPn89YfFbdBomwsFQobeNvbOCijoCHx
         P0qaU8InysKFIF17AL+zwFxgFKtvAEuN9LFQ3d+3X3QtX3qmf0N7iKkvYhj6afh8hlcc
         ATQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746797999; x=1747402799;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H97Jg7L0DKKhpZlTkXwOsx07e4JE7au7Mpk56W/MvZY=;
        b=nj720fzdJP/QucfENKWtEaxchXUXjcL9TfXnvyG8TEguahLPjkpp181krNNeNBpzf+
         esqBvK30qwDWuZwwjgQ8TANHvlJiN/gV7SFXUilPqoxSV7Muu6vaD0IzGVVjZTyAOPHy
         dGMb2XgBgoMtnGWy7kJgWni/5qAL/Zb/JLG3nDnlaE0/GFZHRNaOSbW+JnHA/jQ8/nVG
         Hx+GpwB7PH9dIkyLd4hd8hLnOHOD6oS9FL28Cbb0wXkghlzwNRLYKP/Z5zVRHo8kXazp
         0ZE/Abl9kR/LWBYfTPt9oGUL5ov52cyYNQ5tm2JYJ7iGyRT9Vq3ipoXTDEQe4xGm5GsA
         Xc9w==
X-Gm-Message-State: AOJu0YxO+0u3aOugSsUU8b13nVi8em+dPbuzRgMHUukyTUQwJ5zIFRiQ
	lfGjEBWo07LT8xgKe/DsE3qDv0YcZY3g5LjCcbubhlrtgAl5m54YFa/zNYGmk8jbNEFd7b9u3vR
	veCtbbEMctueO/FTzXGANSUFJF+P8uIi/Gfj6iw==
X-Gm-Gg: ASbGncvr+Xt1gRaPYIV11BvT/SCj/TxaWvmaWNj9jGO+CShUIUgx5j2XdtZqsnvO/Cj
	VrUbjnWBtffhASTOe1r+/cmYrHToqliLB7rbNkSAqzbY0ZfO4Y2NCqE8fj8PLYMjLq4wkEKdKwS
	aT1sVsGITeTsANwihvaRH23A==
X-Google-Smtp-Source: AGHT+IFB3bTqMP//0LzV9XNOCenzWBPKF2P2DsDIPx+TJ8Ka+k3QEuBykHfcjhwojEMtuan3S4JgUKUhHCKRwqOQUDk=
X-Received: by 2002:a17:902:ce83:b0:227:ac2a:2472 with SMTP id
 d9443c01a7336-22fc8c83d38mr55815995ad.28.1746797999169; Fri, 09 May 2025
 06:39:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1739389071.git.amitpinhass@gmail.com> <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid> <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid> <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix> <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
From: Josef Bacik <josef@toxicpanda.com>
Date: Fri, 9 May 2025 09:39:37 -0400
X-Gm-Features: AX0GCFs1nw1K2kozc50HrFRSdjqKJJabz52h-4lBZqdIl_7Elr0Tc9DxgwpjF8A
Message-ID: <CAEzrpqcsZHpcjNzCRhuXnkfEivv1HPNEwu79YUikszBijtz2uA@mail.gmail.com>
Subject: Re: Removing in-source contribution records contributer
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, "Carlos O'Donell" <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 9, 2025 at 8:55=E2=80=AFAM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi all,
>
> I've added to BCC everyone whose copyright notices have been removed
> (those that noted an email).  The full thread for this discussion can be
> found here:
> <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznr=
udgioox3nn72@57uybxbe3h4p/T/#u>
>
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?

My only concern is that we aren't lawyers (well at least I'm not), so
as long as we're following LF guidelines I'm fine with this.  Thanks,

Josef

