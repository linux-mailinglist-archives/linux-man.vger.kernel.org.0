Return-Path: <linux-man+bounces-4299-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9704AC71205
	for <lists+linux-man@lfdr.de>; Wed, 19 Nov 2025 22:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 749EA4E1D8E
	for <lists+linux-man@lfdr.de>; Wed, 19 Nov 2025 21:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C453D2F12C8;
	Wed, 19 Nov 2025 21:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="E0Ln00Eh";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="M680PJHE"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C992D77E5
	for <linux-man@vger.kernel.org>; Wed, 19 Nov 2025 21:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763586858; cv=none; b=iDsoLAlUPIuH8JA+zaBWvzXAWu7OIJ6VtG/c7Je6nTGhQT+5VGza1ETuDcuiXsoOSp0m4ic+W9cTX7dJ1RxN8ZtUBTe/0E7r+mTkZSXbsZ22WjMQ+bRq9S9P4bZ1HuHPpNCqvlLEtJvmVjDhxwU+yh23IkzpR/sOCQHqwV7J9rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763586858; c=relaxed/simple;
	bh=u0rg6FPVucUsFdHhiaEDw50BPsfjitggdxxShRqm4UI=;
	h=Message-ID:Date:MIME-Version:From:To:Subject:Content-Type; b=IU6IjM3Q/whpmdxlhcehjCrM/xt7cxFqMXWY+v7W7RJWGrx9+IrqQEa3qJNkuc0iIg2+eigc0mSR8PB7sV1QfJj3YJUh7K2HcPuFjXOim++3ELXza9F4M1NaghXYmTtXSe7nb9jy6ehFaWvZqZJ6dAeEKzce8IKO+rC6QtYn93M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=E0Ln00Eh; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=M680PJHE; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763586855;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=uNDFJimLLD6d/NZkOC8Wm6iEpNJH5to1tiZRoCFWF4E=;
	b=E0Ln00Ehg9SKQgRdrubm2mseCbhFUBT//wBQWvSXssm1WTUXstWux3X0Kps1QhsOjbZQA/
	WcxJWjox8RxzVzOqRRdAk47SyZF8shVqidvbAthrkWACgYVg7mw+LW5l3nvADX1AhP80H8
	g67cMV6RyNH1gw3dRYpN/ctME0Dr4PY=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-314-d5rboDUMOsa29-W0rqqNqg-1; Wed, 19 Nov 2025 16:14:14 -0500
X-MC-Unique: d5rboDUMOsa29-W0rqqNqg-1
X-Mimecast-MFC-AGG-ID: d5rboDUMOsa29-W0rqqNqg_1763586854
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2dbf4d6a4so60133985a.2
        for <linux-man@vger.kernel.org>; Wed, 19 Nov 2025 13:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1763586853; x=1764191653; darn=vger.kernel.org;
        h=content-transfer-encoding:organization:autocrypt:subject:to
         :content-language:from:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uNDFJimLLD6d/NZkOC8Wm6iEpNJH5to1tiZRoCFWF4E=;
        b=M680PJHEjhzBkk1dq5iugSM/POap4fodlslDVnmKiFqQtQBB7uaCvqyn4ytYeyxb+5
         6j7omuGSuEUulUd+OxMPi+mY6ZepvLBnDI4NpypcO4APY4ydoQ4XY6/YyWIlBfNEL9sy
         cWb/HrZB1ASHMljRJ2kma48ve18arDguE4N8ApQykfIG5uAId4A9eYCLpKIK0Dv9pflP
         wrNuOpqqF6sPxpFs0Us5OQB50nLhj0Tl77Pd/esKT1tDEaGt+E43piDlZUYWYpFNLBWm
         JFkH+tWbkNsdj6BzaBFyqDOkeT24gS687ucNXDEbnNUoeVPP5EyTDqrKnmBHdYS5MO9G
         H1LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763586853; x=1764191653;
        h=content-transfer-encoding:organization:autocrypt:subject:to
         :content-language:from:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uNDFJimLLD6d/NZkOC8Wm6iEpNJH5to1tiZRoCFWF4E=;
        b=KmN2ICGyCZ+J95QWYGT10MLrdkrB8kMaJgQ0RySBnLWYssRyn9IKuSSA62T/XetQmu
         zH8ow7Yz9s51g67HrQ4cW8h5tfuZv0QyQi2Jpon1gMNaPX8cQB5Yggx5wzgsk4zla5hd
         wjX8DSwbJErEPazSTCthp5nbx6WZNJXvWU0dvll/xdP5EMP3Fp3xs8lmFoSPQ50+mN3x
         tmv5u1QhyOYur+SqCNYZ5zFa3tvrL+iRtGncWoSunHDuMK8CAt5nSxvCdP0L47lqeOA1
         6WpWlxe/WqjaZKh+p9yRl8tLcHjrO8oU0Xuh7QJwFaH1kfWaRSlluVbhXDjX06Vncc5M
         hQlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXs0JPeCOJ4UnUZUBJGQJkQo75SeFc/C4qnp2wL2HdKFIbX0cERKlcYTLd0JUv3TZGdHGnOhzSvTKc=@vger.kernel.org
X-Gm-Message-State: AOJu0YyJNkpc7T72dL2nDrOX1ClEjPalZP1mLJqSv4PweFZ4YzAqdgDD
	J2P8AZM047HwP4p7i4JjpEmy/G6xK8sGXFU9k+RH5Bqc/TWOMoLXhyebqBfx5rOozL5plMzEEK1
	8XZMhwsmP4oujE+w/L1SZAuWHqNOp8FbLjlXJayM2VQdtlaWznlXCt9ZPyaDonQKTX969JQ==
X-Gm-Gg: ASbGncszqVsv4YyOqJw7wk8NDpGEssDhFMhch4tp3YhxPb3Mv/t30bjB39/QwrePgYd
	epE8814TNRNqgAuPUb60WjxGS8VX30BRE6EOiCw+DIeag5hwLXAyyQuTPfLtlCLLk5vEFbDnan+
	UMETvYmKlB3KQa3rOtgMujQS92kuRXTA89Cy5wadgKcpjSiOLA2Cwrz1DypFb+1Tgf6vv7ExpAc
	sAnSbqCRBlFSTlAWeOVBYYVcGDXhK2igw/JghbwbDPriB3uE58APaW7Wt23fzbZAlhPPHlS4ije
	UdwIKGBOxzqoIw/nJQawsw9FuGV9h02i4TdlmcwDAFW5gsjoywN9bLw919Hu5qgUKl0g9XiQnJk
	4hQszwGS5F/c=
X-Received: by 2002:a05:620a:471e:b0:8b2:e177:fb17 with SMTP id af79cd13be357-8b32748821fmr115932185a.45.1763586853435;
        Wed, 19 Nov 2025 13:14:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE62i4mrgkA4BBtjc7onn9RXCBHKoHrq1x8ZXcwTKj8kYv27iIB/OYqNpqDQEbElgXVTn9FsA==
X-Received: by 2002:a05:620a:471e:b0:8b2:e177:fb17 with SMTP id af79cd13be357-8b32748821fmr115929685a.45.1763586853023;
        Wed, 19 Nov 2025 13:14:13 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b3295c17basm25550585a.29.2025.11.19.13.14.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 13:14:12 -0800 (PST)
Message-ID: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>
Date: Wed, 19 Nov 2025 16:14:10 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>, linux-man
 <linux-man@vger.kernel.org>, "Andries E. Brouwer" <aeb@cwi.nl>,
 Vincent Lefevre <vincent@vinc17.net>
Subject: Status of restoration of copyright statements to the man-pages source
 files?
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Alejdandro,

What is the status of restoring the removed copyright notices?

At the end of June we concluded with the following:
https://lore.kernel.org/linux-man/u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt/
~~~
Hmmm, it'll take some time.  I need to stop and compare the both lists,
which are rather long.  I don't promise it will happen soon, but I'll
keep it in a TODO list.  I'll also try to do it at least after
September, when I'll be meeting Michael in person, where I'll ask him
about his copyright notices (which represent a huge percentage of the
copyright notice lines).  That will reduce the work significantly.
So, it might happen around the end of this year.

Once I start doing that, I'll do another round of asking the remaining
people about their copyright notices.  Hopefully, there'l l be few of
them.
~~~

-- 
Cheers,
Carlos.


