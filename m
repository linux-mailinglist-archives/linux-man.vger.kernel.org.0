Return-Path: <linux-man+bounces-2482-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4975A3AC9B
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 00:37:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81396188AF8E
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2025 23:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 411BA1D86C7;
	Tue, 18 Feb 2025 23:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TOwZG6vL"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F12018A6DB
	for <linux-man@vger.kernel.org>; Tue, 18 Feb 2025 23:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739921844; cv=none; b=CKIzj4HW3ayHDMO7wfX5omnAeKaYrucNkoF+bacjQGkRFXqw2yR90KKqF6TXy2YuNkevARp3D4inM2MbeeQMBU4LJDvJDE3+bPhRPNa/6iZFEtVShlBx8vSr8QXT8dSVf+4QsZQyiEbGztJm7v+Fs1Ba043Vbbh976ZDhNxs8jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739921844; c=relaxed/simple;
	bh=cj4q8/wSCSoCBIuloNkgYJ6DTmzWgP8zXcNwRUhuISE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=un+vLCFjMNKIY55kmd28NYugz2/zjXP9iPm7PiYvR4xmtyrFSDqU0RPHP8WsRe27iHSe5krmDrBHT37AQspxuF6Ig3KMyH9Ysko8oZS7/Dq4a5XIPLUlWFH/xhxZoHa/9tKcwM2GcoQrygBKbz1oKGrp7f/kuYRD30+RF8aGhXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TOwZG6vL; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739921838;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=X1bUFfSvd9COht87VmOY5Py9hkxQ2PEKwvpcxjxpt+4=;
	b=TOwZG6vL970CKGhX1iRvm5kKpQcn4aaeExwYRvfxrdUahSDH7lMuGrCO0frmSIbO77fwUm
	6iZ4Gna5wsfiqm38W8+cz2xu/0N+WOaI3Hd7iWBENvjCeiVq2MSfohZGJwoEa/WPPGZZXm
	eamwpmOq/y8AQVe6syBlifXuzBppOTs=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-257-lReCJO-HOo2vg7BvCcA8GQ-1; Tue, 18 Feb 2025 18:37:12 -0500
X-MC-Unique: lReCJO-HOo2vg7BvCcA8GQ-1
X-Mimecast-MFC-AGG-ID: lReCJO-HOo2vg7BvCcA8GQ_1739921831
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5f6e3f02e27so1864852eaf.3
        for <linux-man@vger.kernel.org>; Tue, 18 Feb 2025 15:37:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739921831; x=1740526631;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X1bUFfSvd9COht87VmOY5Py9hkxQ2PEKwvpcxjxpt+4=;
        b=RX+R3IPda+UTYOKwCL8tOhWX4J7ODTMT6ADeqXUkoa7/Te9cn9Sj2ftQRxnrUcFjC3
         5LOlGXHIHlhiLOwdRb5apKdNT32zr7qmcy2sD4YkkOGJiIbKgHybrZwUDsDoBXcDi5JE
         1TSamzZ1aRmYdNu8duHdvdIKShEnVUwuuHq5xCzQXxIA3po5aLjPBZ/y0tO6XD90y6uR
         FKlkZI7UQ5ILfLkWwQG/99VoqqmJ/yKr36IliA3x0W0V+I46IESjTp58iet8BvxRqoaA
         DJ4jjyQokdhWCTAdAoHG1IcFX2/az+8ZS0r6D23JmlU7MJRO23IcBwVVAD/5rSSB1cly
         3APw==
X-Gm-Message-State: AOJu0YxYHydhs9fBv3XQQi+EdDgumz/KX/SHbX8N+qYvUWvHFIN5sbul
	u7QQ7B53aj/R7rkPDsztCi6arTQNc1zhWEGIbfpAXzHauAZtydRucPWwakaBAl/DisT/x3lToAt
	thHC13dMFb2ksu7VT6zaHjTLbXZmfDXsLeGwv8TdIis/EKZXGFoXKmY8SOQ==
X-Gm-Gg: ASbGncvO5iRfiK+P2qtgchWz9ADHIis8fdHWtq/4mO68fyrnlYXUPSjT4aLVq5lBQnM
	g4NAofMLY1eEc8AasBhtezUz6waNF4NTygqOkcGnho9bnnG9iyIhLrffIblhSvsGf/DDAOh1LlK
	pCLYw90R97925C5YKwjmK1cxYVSTcs0fLaHBw5zsJmD6qKQLBY+i2PKABbyTvvUzQRTCiQTkvRp
	u2nliT3TdQkd0JkH65jGFdrFutdcTpVsbFQhWLfAZaf43DsxqnfzWDgE82o9k+rW5Bqr/DK9bA4
	zXKJXA==
X-Received: by 2002:a05:6870:472a:b0:29f:b09d:d93a with SMTP id 586e51a60fabf-2bc99a6d355mr9642119fac.16.1739921831281;
        Tue, 18 Feb 2025 15:37:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVbp+jcqncgInqnVkJ1VGM9fL/K54T/SfOuIUBu1uWWsEcF+SAkckHpfa2RuxdzHzbzIISkw==
X-Received: by 2002:a05:6870:472a:b0:29f:b09d:d93a with SMTP id 586e51a60fabf-2bc99a6d355mr9642108fac.16.1739921830931;
        Tue, 18 Feb 2025 15:37:10 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2bc69a3a572sm4989612fac.30.2025.02.18.15.37.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 15:37:10 -0800 (PST)
Message-ID: <88f30f87-0498-4d2a-a9be-27b737ce54a7@redhat.com>
Date: Tue, 18 Feb 2025 18:37:09 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] man/man3/getcwd.3: say more clear that syscall can
 return "(unreachable)", but modern glibc wrapper cannot
To: Askar Safin <safinaskar@zohomail.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-2-safinaskar@zohomail.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <20250217165143.1265542-2-safinaskar@zohomail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/17/25 11:51 AM, Askar Safin wrote:
> I verified using expirement that modern glibc wrapper getcwd actually never returns "(unreachable)".
> Also I have read modern glibc sources for all 3 functions documented here.
> All they don't return "(unreachable)".
> Also I changed "pathname" to "pathnames".

Commit message is incorrect, but the rest of the change looks good.

Please drop the "Also I changed..." line since you made this change in patch 2/2.

You can keep my RB if you drop the line.

Reviewed-by: Carlos O'Donell <carlos@redhat.com>

> 
> Now let me describe my expirement:
> 
> 	d-user@comp:/tmp$ cat getcwd.c
> 	#include <unistd.h>
> 	#include <stdio.h>
> 	#include <sys/syscall.h>
> 
> 	int
> 	main(void)
> 	{
> 		char  buf[1000];
> 
> 		if (syscall(SYS_getcwd, buf, sizeof(buf)) == -1)
> 			perror("SYS_getcwd");
> 		else
> 			printf("SYS_getcwd: %s\n", buf);
> 
> 		if (getcwd(buf, sizeof(buf)) == NULL)
> 			perror("getcwd");
> 		else
> 			printf("getcwd: %s\n", buf);
> 
> 		return 0;
> 	}
> 	d-user@comp:/tmp$ gcc -Wall -Wextra -o getcwd getcwd.c
> 	d-user@comp:/tmp$ sudo unshare --mount bash
> 	d-root@comp:/tmp# mkdir /tmp/dir
> 	d-root@comp:/tmp# mount -t tmpfs tmpfs /tmp/dir
> 	d-root@comp:/tmp# cd /tmp/dir
> 	d-root@comp:/tmp/dir# umount -l .
> 	d-root@comp:/tmp/dir# /tmp/getcwd
> 	SYS_getcwd: (unreachable)/
> 	getcwd: No such file or directory
> 	d-root@comp:/tmp/dir# exit
> 	exit
> 
> Cc: Carlos O'Donell <carlos@redhat.com>
> Link: <https://sourceware.org/bugzilla/show_bug.cgi?id=18203>
> Link: <https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=52a713fdd0a30e1bd79818e2e3c4ab44ddca1a94>
> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> ---
>  man/man3/getcwd.3 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
> index 685585a60..919ffb08f 100644
> --- a/man/man3/getcwd.3
> +++ b/man/man3/getcwd.3
> @@ -246,7 +246,10 @@ without changing its current directory into the new root).
>  Such behavior can also be caused by an unprivileged user by changing
>  the current directory into another mount namespace.
>  When dealing with pathname from untrusted sources, callers of the
> -functions described in this page
> +functions described in this page (until glibc 2.27)
> +or the raw

OK. Includes Alejandro's suggestion.

> +.BR getcwd ()
> +system call
>  should consider checking whether the returned pathname starts
>  with '/' or '(' to avoid misinterpreting an unreachable path
>  as a relative pathname.


-- 
Cheers,
Carlos.


