Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24842284266
	for <lists+linux-man@lfdr.de>; Tue,  6 Oct 2020 00:08:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727099AbgJEWI1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Oct 2020 18:08:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727032AbgJEWI1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Oct 2020 18:08:27 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A58DC0613CE;
        Mon,  5 Oct 2020 15:08:27 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id k10so11244173wru.6;
        Mon, 05 Oct 2020 15:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Tns44asT1yvtZ9QnvZ0k9/0U8us0nBfwRTws4WqeY2w=;
        b=cYmikQySPSmZoglTKzO1bN+fcXAMiX8Bab85QZIe1pu6zjzy50ZJjff95bC5qRlMnv
         68iKzfgx6aQ0La8MYuB0KtwfbtNpaAMD3Ue/zfEwpw1K2cJcum5B134GHNo2znF0w0G4
         7OVl81YB0UzpKJ9qg6oLroD8wSpnsGK5RxZQmuZU4YmVlqsSn5b4rsWmIQNAvaXTzi0I
         6uO8RatEqa9r60ybUbGj+YlIuISDDNdVGBeTre6967yphR3xrc8DozFj5VMzBo0Gjv04
         FMMCUmR5Fpjc9sQZ/F3TvXVmpejQE1YodNs43xEu3/W2QZJREsQZVIC9PIr5LA4aokDN
         uFcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Tns44asT1yvtZ9QnvZ0k9/0U8us0nBfwRTws4WqeY2w=;
        b=P1kVc5/EpUCdeisbOY1MYV+76jgK/dH7Aq3a5E0QTsGH4cYkmx7fkdGw4D7Gwgi6Y2
         OphXLwCNyawemvceWlxs1unh6b7Xetf9Xe8nZ3yeXw1hkOH9QtuEDgeS/a80UM1o6Nvb
         bcuzZtWe5nCMpBPhMfUlMzU4WvyUUSFaTMUDpZfxxjyvXeN01MqU1YfwL3GaO21R5Pt5
         TtDjRzYfa3/lLRB8azbZO76J92W9z818ndJGhsQ6jvM7q6PCxkubQ3t+xc3AN3GSiewp
         ASv1PlYRw7AavWl+/YMDFKy3XlH/U9QVNGJj73o+MY/GgwGSBvLlQUZmM6Zs4ruY80oa
         a++g==
X-Gm-Message-State: AOAM531EQO58KTSeHbT4gy86zopmgSyM1WQfYZfPY3x9jWDn9ojIzbhL
        /6VzAnAdZS6jwB8yiYA/4OY=
X-Google-Smtp-Source: ABdhPJxvZ6T2cRekojqykRXZhZ5Qu8Rl5bKFevrRSSJ2nZVpiff7R3WV/DLiudnIGbYhRwCXdahKJQ==
X-Received: by 2002:adf:80e4:: with SMTP id 91mr1415861wrl.223.1601935705806;
        Mon, 05 Oct 2020 15:08:25 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id a17sm1587191wra.29.2020.10.05.15.08.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 15:08:24 -0700 (PDT)
Subject: Re: Navigational corrections
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Jonathan Wakely <jwakely.gcc@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>, David.Laight@ACULAB.COM
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
 <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
 <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
 <CAH6eHdQrmsHxZbk3+JxRVZ5qH1fhFzLxyigs+DtEzSg2cet+kw@mail.gmail.com>
 <63826e82-7a19-0ecc-f73c-56aa560a842f@gmail.com>
 <CAH6eHdTpzNk4+Rg-+kUCRDZPLHe7MBBf2PK5i1WqD4VeEs60oQ@mail.gmail.com>
 <4422e4bc-f54c-02cf-9b47-808d07ce8ba5@gmail.com>
 <297e304a-758e-f703-d1e2-6708be3ffca8@gmail.com>
 <9c8f90c5-0f34-609f-8001-a61f90e05849@gmail.com>
 <4c8a8fbf-3577-a242-94db-3044b57f6570@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <d38a7cf8-6abb-c581-c877-8de7a35befe3@gmail.com>
Date:   Tue, 6 Oct 2020 00:08:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4c8a8fbf-3577-a242-94db-3044b57f6570@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-10-03 13:39, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
[...]
> 
> off_t would be great.
> 
> In case you are looking for some other candidates, some others
> that I would be interested to see go into the page would be
> 
> fd_set
> clock_t
> clockid_t
> and probably dev_t

Great!

off_t is almost done.  I think I have too many references in "See also".

I'll send you the patch, and trim as you want :)

> 
> 
> Thanks,
> 
> Michael
> 

Cheers,

Alex
