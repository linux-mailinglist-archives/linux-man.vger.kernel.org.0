Return-Path: <linux-man+bounces-2563-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E78F8A4B485
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 20:45:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B3A016ADD6
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 19:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4891EDA06;
	Sun,  2 Mar 2025 19:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UTwJMwBd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A9A1EB1A8
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 19:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740944705; cv=none; b=g/S17YBo+kx6hotwu7AkxVyDdUigQ6mjdEay72gwrnujbJ8Vec0LU7ai5tCsjZg5Ck+KipEuNDrj7jQz6E4NN6H6IIQQZj0G1CPXwVqIZnxJg4n9EJDxklUTWFDKYPj+juljRE77UJCGdNDxP290FizxWHPN6XDJwy4YBi5afkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740944705; c=relaxed/simple;
	bh=2Ra6ex/nmUkasiUTJkwW3b+NnDNqfBDGExnreQDafSk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k8MZBYvZoumJB0Z0oEkoer4qT77Ft05Ldb/doeeUQhm7xSiqWjkhHGb804II6mI4GA1LUxXtRHEOxe6lG2SLvllgrKVmD716tezkMyQJIbQ/8RVIvuHUUJSfkqdUhCsM8BENovEsDv6iLbY+mjkB5nrFCk+GBhdFmZY5716vAU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UTwJMwBd; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-390dd35c78dso2485558f8f.1
        for <linux-man@vger.kernel.org>; Sun, 02 Mar 2025 11:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740944702; x=1741549502; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5wqkKMBQaJrfLn/anJAmISQZi3xKzXk+23tdtD2Syns=;
        b=UTwJMwBdHMTga79vu0tt1VcFH19Yb8YNDvG0JNH2N4FlgC5DPOxyr8hQR1z9EXd+0k
         KSexoXqtdAd7K8KS1lz2GFygbOQbsdGqRYv3GDKK3p0YMupJ2nkbrAgl4aX5VngSrfvY
         ijmsE7/FcDuWeOIBAKCF3Fn3yvpBDRQnGMBZ1TgCwka0vxnUrQ0BoZC2BTix3AVb7bVz
         DAtESmKKrdA2E0c2K1NmC35sTZBCpyI7CP8m7Pb4h73L009XySfbc06QvYWvAAczsloC
         CZbPDrnhcKK8QOHAw8XurlAtslHYwmxoOp/YGYOERAlxGuqL+aRh0trIukK233kefSk9
         C5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740944702; x=1741549502;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5wqkKMBQaJrfLn/anJAmISQZi3xKzXk+23tdtD2Syns=;
        b=tbx8f6wlz5JOZEe7cZgl7/49gFrrmh9iH9OEJrNceRckWMzTtWKimg6IICtc+kuUzv
         cq/99BWc3Wallc/AqnKSf245PmaFQcpV7yZYjnZSG4iWMpPRLyluVw8M+HrhkAOfOJ4i
         e3IqJxRNEA2OWnYT05tL15cEsfjMyVjjcMnxbtxJGFcsMiE/oQ+hhOJbSMDl1fozgf1O
         ra91XYJWXC9ggf1a63Hu5zx4hV2yeCkW5lZqd2AaLErP3nw8PIK4AaPVzy+4Prp8km21
         rrzVEGd5eINgAPt020KBEQYXB03tGVftrf+VTato2y2nxPIObMmmU+i4VotlTorppALe
         4jWA==
X-Forwarded-Encrypted: i=1; AJvYcCUWMemrxn2H6M8lRDtrpBfM4ZDbkjtQ+8Z9ToY7fpVAgtOsDj4OOdr9EbpQoxrzJsKgwFZGmj47jsQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YzRZ0B255veq6ccGzx7X/VhrKVx7KPgCLHO+Bzw2h05O9sA3p83
	3m+Xg6Hn6cTIg+nBg7NlIuRGJ+wkLnitkevFuOWbRfKeVwjelnvG
X-Gm-Gg: ASbGncu8BIFVeOeUgnp3krPT4JrHWz4859D88jIm0rSau9XxhZTBETdbAWfiUM6IuBE
	mU/eAi6MqTu/kZF7UQvKtouk4NtgI76meQqZ9zcKYmzCiGUKiXg8OkhIZX1M8ya143ctd/YHdVk
	4SQOQWZYRKRDVWRAg8etrIKjmKpE0PdI0SNda5B3VZecJRNck2tqgifOiRZjFXiprZZjLZzvQ+h
	PfShfED3iCspantwl863RRktJw4oc4QHqkFIDAOWBkz5xWczRrqOcHmZsNSqG8+lGzQ7tcgPrWM
	6mDwVRlU1dnpLDfd+7KVUFZppbw9lBg3F+ek3Ug8nQ==
X-Google-Smtp-Source: AGHT+IGaM6l4wche+m60NgYE16iyH3ZyGbPMr7afrXC6L1KWIo92I0hJzpWdCDI1VRvDpSnYgX32Pg==
X-Received: by 2002:a5d:47c1:0:b0:391:98b:e5b3 with SMTP id ffacd0b85a97d-391098beaaamr854834f8f.14.1740944702105;
        Sun, 02 Mar 2025 11:45:02 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-390e47a7b88sm12099433f8f.40.2025.03.02.11.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Mar 2025 11:45:01 -0800 (PST)
Date: Sun, 2 Mar 2025 20:45:00 +0100
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jared Finder <jared@finder.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH man v2 1/2] TIOCLINUX.2const: Restructure documentation
 for TIOCL_SETSEL selection modes
Message-ID: <20250302.247ea614775c@gnoack.org>
References: <20250223213642.10042-1-gnoack3000@gmail.com>
 <20250223213642.10042-2-gnoack3000@gmail.com>
 <1094ef00ff08bbede90c01f7a36df293@finder.org>
 <db5oeclvwmoegfzcrz2w7nfdk552cuyuvu6tkn67h3bojyvhqr@xcrwp3ayfgag>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <db5oeclvwmoegfzcrz2w7nfdk552cuyuvu6tkn67h3bojyvhqr@xcrwp3ayfgag>

On Sun, Mar 02, 2025 at 08:06:26AM +0100, Alejandro Colomar wrote:
> I have no comments of my own.  What do you want to do about the ones
> from Jared?

Thanks for the reminder!

These suggestions all made sense, I replied in-line and sent a V3.

–Günther


