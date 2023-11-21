Return-Path: <linux-man+bounces-137-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B04B7F3A09
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 00:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91A031C20B4C
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 23:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB86C54BFC;
	Tue, 21 Nov 2023 23:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dR5qkQHe"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18CBF185
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 15:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1700608041;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bBz1iDSdeBIOABYMZoLGdPZUbBHJQYVOoK894fIZ+qE=;
	b=dR5qkQHeAShdJ0ZhXK3xoeK+HvDEs3S3snkGOeGm/pOvbl4G9OpBhF5BD/jJhqkhQA8tLp
	EtZ+y6YZbU4K2rapAxvT4R3mOfF3cqqqezFZtQzYgSs2L1FSm5Az7FnnW9Ul+gwBtwZdFT
	aYj16WiLyeU5Pu3m6JB7gPmPl3hz8rM=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-272-BRG1Yl1ZPJ6d1To4FBk3FA-1; Tue, 21 Nov 2023 18:07:20 -0500
X-MC-Unique: BRG1Yl1ZPJ6d1To4FBk3FA-1
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-5be09b7d01fso6718548a12.1
        for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 15:07:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700608039; x=1701212839;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bBz1iDSdeBIOABYMZoLGdPZUbBHJQYVOoK894fIZ+qE=;
        b=HVgxwG/yQ6c0RQn0j44O0xV6ddkXh/c1prOMnZy+qsGO4V2R/FQFpIIofHOunfgLZ8
         5MGC0n5ZuSLIjmoTSSlweTAcwQKa9tyNu6wokzc6RSlHMh/GrvXIuaXvJtXOwgtUUp/w
         txg82IxxZR8u18yJveSDK3Cs5BkS7NXczVIV5gzHvIIKbB5ygWH6zxkdnzLXr8bRfNl4
         X/413nOjqhEMx4SaEm69LnYkFrCDi9xJVzgUAgPYZtj6DHgRVuLf+jM5jR6fmDPYIxQ/
         UkEdJQUTVIjQfdA5r+RocGoAFMljZ5fwLJCcY891D+VaB4Eq1RJUA9tLzzqpBrsOT7Pi
         1AtA==
X-Gm-Message-State: AOJu0Yw0tSt0gPA3zTjeFrB1zskNW6WKKrYAkaR/iAWd61um+FagAVjB
	93Crl/ZTJelr94qGab3n2rjyzrNKVSyaP9cTnrWqqJlDm2q+XNCB3WDDtK5Pc5IxszfTlOruIHb
	pZb/kzngWSDSJfknJ6tSE
X-Received: by 2002:a05:6a21:2c83:b0:180:ebec:da1e with SMTP id ua3-20020a056a212c8300b00180ebecda1emr510297pzb.21.1700608039463;
        Tue, 21 Nov 2023 15:07:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6uAOM2/zKQtCc+Qz7VkUK2CtcONrBAeLluLvJBKDL/i2/v6bsvOsBaIhkiiK/xuDzy/e2Pw==
X-Received: by 2002:a05:6a21:2c83:b0:180:ebec:da1e with SMTP id ua3-20020a056a212c8300b00180ebecda1emr510272pzb.21.1700608039175;
        Tue, 21 Nov 2023 15:07:19 -0800 (PST)
Received: from ?IPV6:2403:580f:7fe0::101a? (2403-580f-7fe0--101a.ip6.aussiebb.net. [2403:580f:7fe0::101a])
        by smtp.gmail.com with ESMTPSA id b4-20020a17090a800400b00283967b948csm55243pjn.31.2023.11.21.15.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 15:07:18 -0800 (PST)
Message-ID: <6ec62d57-3336-64f8-5921-152600eee3ce@redhat.com>
Date: Wed, 22 Nov 2023 07:07:11 +0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: proposed libc interface and man page for statmount(2)
Content-Language: en-US
To: Miklos Szeredi <miklos@szeredi.hu>, Ian Kent <raven@themaw.net>
Cc: Florian Weimer <fweimer@redhat.com>, libc-alpha@sourceware.org,
 linux-man <linux-man@vger.kernel.org>, Alejandro Colomar <alx@kernel.org>,
 Linux API <linux-api@vger.kernel.org>, linux-fsdevel@vger.kernel.org,
 Karel Zak <kzak@redhat.com>, David Howells <dhowells@redhat.com>,
 Christian Brauner <christian@brauner.io>, Amir Goldstein
 <amir73il@gmail.com>, Arnd Bergmann <arnd@arndb.de>
References: <CAJfpegsMahRZBk2d2vRLgO8ao9QUP28BwtfV1HXp5hoTOH6Rvw@mail.gmail.com>
 <87fs15qvu4.fsf@oldenburg.str.redhat.com>
 <CAJfpegvqBtePer8HRuShe3PAHLbCg9YNUpOWzPg-+=gGwQJWpw@mail.gmail.com>
 <87leawphcj.fsf@oldenburg.str.redhat.com>
 <CAJfpegsCfuPuhtD+wfM3mUphqk9AxWrBZDa9-NxcdnsdAEizaw@mail.gmail.com>
 <CAJfpegsBqbx5+VMHVHbYx2CdxxhtKHYD4V-nN5J3YCtXTdv=TQ@mail.gmail.com>
 <ZVtEkeTuqAGG8Yxy@maszat.piliscsaba.szeredi.hu>
 <878r6soc13.fsf@oldenburg.str.redhat.com>
 <ZVtScPlr-bkXeHPz@maszat.piliscsaba.szeredi.hu>
 <15b01137-6ed4-0cd8-4f61-4ee870236639@redhat.com>
 <6aa721ad-6d62-d1e8-0e65-5ddde61ce281@themaw.net>
 <c3209598-c8bc-5cc9-cec5-441f87c2042b@themaw.net>
 <bcbc0c84-0937-c47a-982c-446ab52160a2@themaw.net>
 <CAJfpegt-rNHdH1OdZHoNu86W6m-OHjWn8yT6LezFzPNxymWLzw@mail.gmail.com>
From: Ian Kent <ikent@redhat.com>
In-Reply-To: <CAJfpegt-rNHdH1OdZHoNu86W6m-OHjWn8yT6LezFzPNxymWLzw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 22/11/23 03:42, Miklos Szeredi wrote:
> On Tue, 21 Nov 2023 at 02:33, Ian Kent <raven@themaw.net> wrote:
>
>> I've completely lost what we are talking about.
> I started thinking about a good userspace API, and I'm skeptical about
> the proposed kernel API being good for userspace as well.
>
> Maybe something like this would be the simplest and least likely to be
> misused (and also very similar to opendir/readdir/closedir):
>
> handle = listmount_open(mnt_id, flags);
> for (;;) {
>      child_id = listmount_next(handle);
>      if (child_id == 0)
>          break;
>      /* do something with child_id */
> }
> listmount_close(handle)

Ahh ... yes that seems like something that would work.


Of course we will still end up working with an out of date list

but that's unavoidable, at least the list would be consistent at

the time it was fetched and if it was really needed to have a

consistent list then the above could be used.


Are there potential problems with holding locks over the

open/next/close procedure such as the close not called or the

process crashing?


Ian



