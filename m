Return-Path: <linux-man+bounces-938-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D119F8C9A2C
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 11:12:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DA4E2817AA
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 09:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8C51C6A1;
	Mon, 20 May 2024 09:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lB60g9Sl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FF11BC4F
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 09:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716196371; cv=none; b=O67/SUQCVBRWIXRPPByzOfrNAwhFlXWVq7WA3no/ZYepOpSwnqQR9V/VX3Fr7D/x4to8rQg0hZg4uCwFy094/uQtQ0FKviyEf1dEn+qmhjx8xNeCV8ESjHKn+65xiJRPVeF8qwqV/cktn2gLh+0NXVVOX7WdIpR7EPqk+znV8R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716196371; c=relaxed/simple;
	bh=jY47prQZ3gkPoVuKoFhMtxa+aI9apekvNX1QLM/ieXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OVnRh8e8D16Mvtq4zaRkyXo5DlPyk2ss+sFUl5fkUaMJi8Tg4uXTYqavYTabp1ZgawLo9byTKsvTB0fE9w532xvtoSHN5Q4wc7ITLgjzclbdVWfiBnOQK/PMwIsobRVJGCUOi+V6vf62LOk+JH9Wlaqlxkik7XBM0QSBzQrucZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lB60g9Sl; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-34f0e55787aso1854553f8f.2;
        Mon, 20 May 2024 02:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716196368; x=1716801168; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hS6qcsLH+Kjidvg7slurQY1wqbgEoiY5LypJux2b9Ew=;
        b=lB60g9Sl4HhCgUanQhT+QTX3JaJlSx6uXHBAZGUBtkApbu8kuhVAhGIjoGRRu5isxx
         lBbxxexNKkeetJYYWlPztBA0AM5X0XC0C/YGKrJVMpip87ToPVItMQARJolpONIPE0SC
         1nsfwnA/H3eNQuVn5jXRwMfDptKWB6axBhtsdD/s+1g/0WZdY1iYq7dumxSz1AZDvHYN
         EoF9eyt8U/kxaWCXrjQGNEX4kai/cwAe9Rx5yTV0skdEbUbjsGokmYX3yAMq9a6vYm3r
         1/zKphsUaws92PTG/RlFdAduv41IajnegDf3NHqHId4ozjY5MrecK1CgB/wpfEZTXyH0
         inIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716196368; x=1716801168;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hS6qcsLH+Kjidvg7slurQY1wqbgEoiY5LypJux2b9Ew=;
        b=S2lYP2BYgORGsNpOzmOspftO1z32Kg2Uxo/Ye8lYAADVk62M+Blm+xjEXsfpftWVXU
         BjDH8Z9UCvXcIjz3+1cJBNMEj4XvpQwvUcJKSyB+mvq/Rqw04mm0AO6Pg+fg84jaOLIa
         +YNefYEPYC2JJ1RqrHOLRn9pofn7zy05eXt+hBwd1yZ+9osj+FPo6gp0K6ePCEEnbc7y
         kPIzeyJyU+uJ9URguG2Ncc7/uMRVG5tPFASorJf+HEvou6DN2467zV7sja4VQfkJR3or
         rzB0KV1zk9PAIOlWP3/dAFr5sVpkmDDwPK6AdVPj2/9BZ7tcMKJJYLtQwpphztwbXkkL
         mSsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVE5rwYA5M74/c18FYJ3xfMmMoziLHPH6kvTnkh5842hakOIkOgn6itmG/482b4JTJKNXP7caIsrI9PkTwlQjaS1pG81aBggr7EQQ==
X-Gm-Message-State: AOJu0YwqHkWqX980jTiamo/6CqyRTfusNZIIkBtxd1JpZrKDOMop6Rd+
	ted2DyaUAAjhtDdXETqTj5DREHtTXIzIPDIqrMXPPopQATUxHXgqOpaNq4vE
X-Google-Smtp-Source: AGHT+IF3BRNmpYU+5XDi1/gEPiILNmh54X1WsRPZEIZKDXxVsbbhiHfm1gNfxapOUzCuICmPA6P6kw==
X-Received: by 2002:a5d:4b0f:0:b0:346:bc1b:4efa with SMTP id ffacd0b85a97d-3504a73bc7dmr20867570f8f.32.1716196368099;
        Mon, 20 May 2024 02:12:48 -0700 (PDT)
Received: from t420 (net-2-37-91-160.cust.vodafonedsl.it. [2.37.91.160])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-351dea787efsm10284595f8f.30.2024.05.20.02.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 May 2024 02:12:47 -0700 (PDT)
Date: Mon, 20 May 2024 11:12:45 +0200
From: Emanuele Torre <torreemanuele6@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@vger.kernel.org
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
Message-ID: <ZksUDXCkKeVdIBox@t420>
References: <ZkrZb91EgZoaOybZ@t420>
 <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>
User-Agent: Mutt/2.2.13 (00d56288) (2024-03-09)

On Mon, May 20, 2024 at 10:29:12AM +0200, Alejandro Colomar wrote:
> On Mon, May 20, 2024 at 07:02:39AM GMT, Emanuele Torre wrote:
> > So probably the best solution is to just make the pidfd_open(2),
> > pidfd_send_signal(2), and pidfd_getfd(2) man pages tell users to include
> > sys/pidfd.h and call the GNU libc functions instead of including
> > sys/syscall.h and unistd.h and calling syscall(2) directly; now that
> > sys/pidfd.h exists.
> 
> Ahh, interesting.  I'm using glibc 2.38 and still don't have that one.
> It seems added in 2.39.  We can directly document that in
> pidfd_getfd(2).
> 
> > And maybe to also add a pidfd_getpid(3) man page for the new pidfd
> > helper function.
> 
> No, usually we document the glibc wrapper in man2, unless there's a big
> difference between the kernel syscall and the glibc wrapper.

pidfd_getpid() does not have much to do with pidfd_getfd(2), and it does
not call pidfd_* syscalls either.

As far as I understand (I have never tried to use it in a program),

  pid_t pid = pidfd_getfd(pidfd);

Is equivalent to the following command in shell:

  pid=$(grep -Pom1 '^Pid:\t\K.*' /proc/self/fdinfo/"$pidfd" || echo -1)

It reads the /proc/self/fdinfo file corresponding to the given fd and
returns the value of the "Pid" field as a pid_t, or -1.

o/
 emanuele6

