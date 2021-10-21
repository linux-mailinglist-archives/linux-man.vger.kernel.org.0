Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 145C1435DB0
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 11:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231326AbhJUJPN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Oct 2021 05:15:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230440AbhJUJPN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Oct 2021 05:15:13 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9959EC06161C
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:12:57 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id d13so1540005wrf.11
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3qGQ3ni89neICf3NHxo2MYUpwV7dSp+Zw4HoUsE/RWM=;
        b=jy2AtSuoCcxETI6rxDgvOlXmG+esXjUxedltij7aOQx4z18S0kxxeIA8vZcVbCTsfm
         JRRILoxuhL1TKFNwISyh6tv9A//IS6bqD8SnWt1JKothKaQbD+T00cread+HSfhHMBR8
         Gk0m+Ghedhc1J9Rij4TEjSW1JJi6Wdlh4Le+Y680R8WmEnmRggL5mBut2z1ZpuSDXwOK
         P9aay4G+7e6duebO9DhYCxe0LO9NF36mfdTpGLqR+6S6mbNZKViFAAt/m8YSZBxGhC1h
         eys4WiQT2Ap4FoIpv5z838Lq668sNkHcGfXlR8/jrpbwumoF6LW5M21B+AdzgjRuEswZ
         J6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3qGQ3ni89neICf3NHxo2MYUpwV7dSp+Zw4HoUsE/RWM=;
        b=OPoVloXx1Oiop+8h5sjxQt10wQCX1s4RfsRx1K48JB5Za7OyWP+QO7YfG9LcWqVVrs
         i4fCr/cG6TFTAGb8JQNCbUxVeBqjmB/hbs9yMFUsi84EWRo5tyb0rsmON5FrbhDM/cET
         taNN7cFXsZIREb5vuaL4cy15pCcTc/wQwRqgIQZPPaphv7v1mFzk/uD2WBi+ZGc0DTT2
         mf+3kho2Cfe99hK4U+4HEq3+YNNXC9+EnddGduNdUOJSRCZAdQQx+s+J8PywJflgGdfa
         KSeE7o+zA9QSQC+RZUUoEWvTK08EcuOhqoSk57P/g7EnkNd0HGLmqV/vW97FIfSvIhuB
         HQDw==
X-Gm-Message-State: AOAM5316Vq5XP/EH7khacXjgHlQjyHdUzrgqxLG6kvyv2psYKgRZXH7t
        8b7fzoxudYxN10nfqXbiJMB9tLuhZMk=
X-Google-Smtp-Source: ABdhPJy5IsloYEUfuAFlQyY8HSOqxoMyh/Q/h8ipi2TPTGTrGh/qeC2rOk/T9atkQhwvB7jR4N5zIw==
X-Received: by 2002:adf:a3c3:: with SMTP id m3mr5752540wrb.83.1634807576281;
        Thu, 21 Oct 2021 02:12:56 -0700 (PDT)
Received: from [10.8.0.138] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m2sm7291110wml.15.2021.10.21.02.12.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 02:12:55 -0700 (PDT)
Subject: Re: [PATCH 1/2] ctime.3: Use VLA notation for [as]ctime_r() buffer
To:     =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>
References: <20211020202241.171180-1-alx.manpages@gmail.com>
 <20211021092746.78bc82f8@inria.fr>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4ea614e0-02d7-ec82-5fc7-307403d8dccc@gmail.com>
Date:   Thu, 21 Oct 2021 11:12:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211021092746.78bc82f8@inria.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Just forwarding a conversation to the list

On 10/21/21 9:27 AM, Jₑₙₛ Gustedt wrote:
> Hello Alejandro,
> 
> On Wed, 20 Oct 2021 22:22:40 +0200, Alejandro Colomar wrote:
> 
>> As N2417 (part of C2x) suggests.  This syntax is very informative,
>> and also, if used by library implementers, can improve static
>> analysis.
>>
>> Since it is backwards compatible with pointer syntax, we can do this.
> 
> I understand the intent, but these `_r` interfaces finally went into
> the standard without array notation. AFAIR one of the arguments was
> that the headers should be usable from C++.
> 
> So I am not sure if it is consensus to have the documentation have a
> different form of the interfaces than the standard(s). I don't know if
> you'd also add the attributes that glibc uses to the `printf`
> interfaces, for example.
> 
> I am not saying that you shouldn't, in the contrary it is probably a
> good idea to list all those semantic restrictions in the documented
> interface for which me have syntax. I just want to make sure that
> adding such semantic hints to the documentation is consensus and
> sufficiently well discussed.
> 
> Thanks
> Jₑₙₛ
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
