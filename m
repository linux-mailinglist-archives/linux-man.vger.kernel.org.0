Return-Path: <linux-man+bounces-4360-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D70C9C051
	for <lists+linux-man@lfdr.de>; Tue, 02 Dec 2025 16:49:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6870E341054
	for <lists+linux-man@lfdr.de>; Tue,  2 Dec 2025 15:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ABA3320CC2;
	Tue,  2 Dec 2025 15:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="otN2co/g"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B08829B783
	for <linux-man@vger.kernel.org>; Tue,  2 Dec 2025 15:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764690558; cv=none; b=YyxIVcPQC54zRaWyoMdw5H/ZdtZGacvbGRlnCElYPQjovZvwU+Mg3G1kWC1bHU/1Hz+aTasR5hyIhrnNv6Ehto1ZLtJyg1FyEjDAo9ngfTBZ1QIkI/ROs8o3y89qMOoy0sXuad90xdM5/9lNOEdNqU6sqJO7OXAiOldRM1eumTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764690558; c=relaxed/simple;
	bh=lGDPvqWc4S09YzleAJhJzt7M1U1M3oPjtgCqvMJUEVE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QRUWTtExqBJOOJa7bIbqkhBu6XckUoAgUdrd6NDNnlncQMHfhw+DrFEf+JEsWpxEfrdb8K7Jqo/wIgtRwK6dOu96brckRAijWg56JYnkwL/wbSMWgzqv6bDHwFOORzD/s4Q9ECp6zlzAGbY3pByzjE+S3mLcXgrqCOdiRyHd/HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=otN2co/g; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-295c64cb951so1035085ad.0
        for <linux-man@vger.kernel.org>; Tue, 02 Dec 2025 07:49:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764690557; x=1765295357; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s4O+dKo19svdMdaXttmSIPnXMMywljluV+w72wd4rIQ=;
        b=otN2co/g2uAOKg1/rx5iKMOJ5KCCWo4Sf9kXbKnNWDB4tW0xZgZbL3UqViEQgC9mvx
         bGDlz3ovKuyCyR7uuMK0dz1f8RZ7Ly3AjILMF8mHcoXCKm1U3EU78K+u7osj0+jRuUkl
         D+0z0RCkg6b/rGxL+LJxhBht5FDWpGNxF1O9TN/cmWHL1S5HdOLyvdvP6Of4W8GHz1UR
         j4H73aIASEahIP3WbXlKzMEiCiuxS/7dqmtty3UGN7f6CxgqU/gaKQEvKh2zYvmn/lW+
         Trx+D34TiIN3a+O/Pb3PCFlqjAYbumsqnLLWifLUuiJXCNtUKzN+vkTUy6XTBTbnC/Or
         BlPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764690557; x=1765295357;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s4O+dKo19svdMdaXttmSIPnXMMywljluV+w72wd4rIQ=;
        b=a3ORE9BJvt/QZjYy84hQoEAzPKklKAkuD9xR4KYYX0u2tNZjnOaHsM6pztMZA4jLpG
         xoXQ5nKvAh4OJe3i2Vo1XruzO0mAb594fEY249DHCnUuMQ3Fg4qFF1dz1LHsBmsuo+cH
         r8g6th7eGfQ6VRBslr4FUpa9qxZHIsnOZR9SlM9LziIqoenC6UD60EYzb3REygREjj/1
         lGFXtYDkosdgH9AnYWG9R5mZ4f+QogTctljFYUFgxUyfoX7XYdRpHIaBJcVyFV2FT9ZQ
         rjC/z0QteINz8LnJv31OqStftMFAKjGJjYGEr/JPkBXxJcgr1Kf08cvk/3+TD7USCfPb
         hBMw==
X-Forwarded-Encrypted: i=1; AJvYcCWElAbq45P91uwXs8PTzcRRRQdvp/nc+6qAvvS42VbvauWzJBe+Blu9JZZICPirFe4RvJzUJmyknTw=@vger.kernel.org
X-Gm-Message-State: AOJu0YzJF784M6LAGTkgtzisOfE/Bi2YGB3rDHqfsaIrQJJo8Fuw77g9
	8AdcteaOqt5zrggEsXRr/i1WavoJies0CVIviNxJSQIihSskOfzwYq2nFlHtlTeyQhT4Fv1DkBT
	1/dObk2gTKTZ5XlxtM9Tqy5DRZbXdeQUiPM03pEQgrKDlsSg9d9wZfiNj
X-Gm-Gg: ASbGncvQt0yfAMZ8cO/Qj3m+dq88yp5U9F6+4rin8kcKpTg1MRoaRnog8IsRN0uC8ml
	ctpOlO5iiVG2Ta+AcV339QRtDZZrJz55KXxPTsqnkr0YrTC2UCjjQBDG9Eraq5wd4IazGzwDQlh
	JhtGpdJ/ROeZbXTrm8A4jrHtjA651nJ+ISK3VLZv3FB/cfcihVUUw7rLBW6UXqk3MOy+rJcmFc8
	Ls7CkWtRbd/xNXpOp1v1d6EFan4dit489NKTqnt1EraunCx9/+8IPk28yG9Xi9bVApCQ3S0yNBs
	LUs73LqGcHN2dFbziGPZbqbF
X-Google-Smtp-Source: AGHT+IHc5o+meLdA/l/w2O3KmcDJBz90NkJPEWG5UW2du9I3kQo08SqIf7LaVj0aoisa8qMYCccADkeItW6hZRNWNJ0=
X-Received: by 2002:a05:7022:f102:b0:11a:2c18:9e70 with SMTP id
 a92af1059eb24-11def9089d4mr2249c88.11.1764690556102; Tue, 02 Dec 2025
 07:49:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027131711.186482-1-vincent@bernat.ch> <20251201195726.3669864-1-vincent@bernat.ch>
In-Reply-To: <20251201195726.3669864-1-vincent@bernat.ch>
From: Craig Gallek <kraig@google.com>
Date: Tue, 2 Dec 2025 10:49:03 -0500
X-Gm-Features: AWmQ_bmbg-yKhU2pIVTYo3U2dfmlXgdqYl1I7UwdZNnSWBOy8NuW7-_9wQmwkiY
Message-ID: <CAEfhGiwbaAuvZ=aVQoRw8+ZQPmMQnwp3WFO5ELCMPJOOa3FnWQ@mail.gmail.com>
Subject: Re: [PATCH v3] man/man7/socket.7: fix documentation for SO_ATTACH_REUSEPORT_EBPF
To: Vincent Bernat <vincent@bernat.ch>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, 
	Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 1, 2025 at 2:57=E2=80=AFPM Vincent Bernat <vincent@bernat.ch> w=
rote:
>
> When using eBPF, there are two possible cases depending on the program
> type. Only the first case was described. In the second case, the program
> should not return an index, but a decision (SK_PASS/SK_DROP). The socket
> should be selected using the sk_select_reuseport helper.
>
> Cc: Craig Gallek <kraig@google.com>
> Signed-off-by: Vincent Bernat <vincent@bernat.ch>
> ---
>  man/man7/socket.7 | 23 ++++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
>
> diff --git a/man/man7/socket.7 b/man/man7/socket.7
> index b4d58a23d5da..e4e85dc9345d 100644
> --- a/man/man7/socket.7
> +++ b/man/man7/socket.7
> @@ -354,20 +354,34 @@ the sockets in the reuseport group (that is, all so=
ckets which have
>  .B SO_REUSEPORT
>  set and are using the same local address to receive packets).
>  .IP
> -The BPF program must return an index between 0 and N\-1 representing
> +The classic BPF program must return an index between 0 and N\-1 represen=
ting
>  the socket which should receive the packet
>  (where N is the number of sockets in the group).
>  If the BPF program returns an invalid index,
>  socket selection will fall back to the plain
>  .B SO_REUSEPORT
>  mechanism.
> -.IP
>  Sockets are numbered in the order in which they are added to the group
>  (that is, the order of
>  .BR bind (2)
>  calls for UDP sockets or the order of
>  .BR listen (2)
>  calls for TCP sockets).
> +.IP
> +The extended BPF program can be of two types:
> +.B BPF_PROG_TYPE_SOCKET_FILTER
> +or
> +.BR BPF_PROG_TYPE_SK_REUSEPORT .
> +In the first case, the extended BPF program must return an index between=
 0 and N\-1,
> +like a classic BPF program.
> +In the second case, it must return an action
> +.RB ( SK_PASS
> +or
> +.BR SK_DROP )
> +and the
> +.B bpf_sk_select_reuseport
> +helper can be used to select the socket which should receive the packet.
> +.IP
>  New sockets added to a reuseport group will inherit the BPF program.
>  When a socket is removed from a reuseport group (via
>  .BR close (2)),
> @@ -386,7 +400,10 @@ takes the same argument type as
>  .BR SO_ATTACH_BPF .
>  .IP
>  UDP support for this feature is available since Linux 4.5;
> -TCP support is available since Linux 4.6.
> +TCP support is available since Linux 4.6;
> +support for
> +.B BPF_PROG_TYPE_SK_REUSEPORT
> +program type is available since Linux 4.19.
>  .TP
>  .B SO_BINDTODEVICE
>  Bind this socket to a particular device like \[lq]eth0\[rq],
> --
> 2.51.0

Looks good to me, thank you for the clean up!

