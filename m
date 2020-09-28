Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 051AE27AC3C
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 12:51:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726465AbgI1KvM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 06:51:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726461AbgI1KvL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 06:51:11 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3A8AC061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 03:51:11 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id e16so801606wrm.2
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 03:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pvCZZt1Cz+RFW4ZN/Umx6iSiQdL867OqZm+CkfnA6/M=;
        b=jotT7nclC8E6MWTU7kp3d6tg5+ApbAVE5C+uOzbeDiByHYqpViD7XAwm5g/NhzND7h
         MCFBa62NBtSiYBFt+Jd3k4PHafudWCucTboGwkMFBGDvbEACVoKN3/K8+r698dwnumrF
         CAkoaIzv1v8ZtCcA2xlq6K4HpOopPRzJjmWBSd5PUOalo0UWRwyVst9uKiFVp7G6Oa4a
         2A35CWmzp671dy07S4JADiKddqGVGcv+golczeC5kVXaB5OCetPqf30G7RCQTfsNSWSO
         0UW6nkv6/F5vbKatTSaUvjmIPt3qDGBooFDOBKHt3pylXPBWvucLzPyH3aOTtBTHJjBd
         phVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pvCZZt1Cz+RFW4ZN/Umx6iSiQdL867OqZm+CkfnA6/M=;
        b=UmN0jUjW32zf9I0ly+vxqX6BF28MgorPQmNaJFdfd82DZRx7yEuhNLc/YilLPk+qp0
         NM5V6909W/HGaV2J2pVHmgXE8A89U3oERUssHxBCtqzD9YusKkzxAoCKqEtzmaZm4Xif
         ubVHcrY2WQSWhgekeWiDJbtcBL/ptBmf3wlyetBqzhw3Yr+CyKYGwBqsBIl0rsHfk/8l
         5VuRUKaSDB3T+OOVszB/pIieltzLPVfU40OQXWLNDXxsdiYk0A0E9QRec4X1AJ4yDL58
         EpdsdeXiPe/2wKzsceUywDxiPZsSboqTP9QyPkqEeWMPQorcnE9AAMN7vNLzVGCPSKQM
         mxOg==
X-Gm-Message-State: AOAM533Zxoq7sSygpotRTipj92AKojGf2zt78Q6xps08RnE42oxsG63y
        CLdNEvAZ3VacCyr6b+1R32CvzkuBC/U=
X-Google-Smtp-Source: ABdhPJzWkMT6cc6XDG0FuMTXnhQdPSg+KDC9pSSSMN9OJPoJnkEnA+0WPe3A7tMZ34mRSYrTGQVZIQ==
X-Received: by 2002:a5d:444e:: with SMTP id x14mr954489wrr.235.1601290270327;
        Mon, 28 Sep 2020 03:51:10 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id h8sm795443wrw.68.2020.09.28.03.51.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 03:51:09 -0700 (PDT)
Subject: Re: [PATCH 1/3] system_data_types.7: ffix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
 <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928104016.za36rrtmgb55bh3v@localhost.localdomain>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <7fd6e906-8050-b1a8-96e9-a4866965bdd7@gmail.com>
Date:   Mon, 28 Sep 2020 12:51:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928104016.za36rrtmgb55bh3v@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 2020-09-28 12:40, G. Branden Robinson wrote:
 > At 2020-09-28T07:59:14+0200, Michael Kerrisk (man-pages) wrote:
 >>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
 >>
 >> I do think this requires an explanation saying what you are
 >> trying to do with this change (and then perhaps a more expansive
 >> "Subject" also).
 >>
 >> I can visually see what you are doing with this patch,
 >> but I do wonder if there is a better way of doing it.
 >>
 >> I've dropped Branden into CC. Perhaps he has a comment.
 >
 > Hi Michael, yes--thank you!
 >
 > In my opinion, use of "raw" *roff requests in a man page is a "code
 > smell".
 >
 > Let me have a look...
 >
 >>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
 >>> index 361e8d411..ff0403df9 100644
 >>> --- a/man7/system_data_types.7
 >>> +++ b/man7/system_data_types.7
 >>> @@ -66,7 +66,7 @@ system_data_types \- overview of system data types
 >>>   .TP
 >>>   .I aiocb
 >>>   .RS
 >>> -.PP
 >>> +.br
 >>>   Include:
 >>>   .IR <aio.h> .
 >>>   .PP
 >
 > This is changed already from my most recent "git pull", so things are
 > moving fast indeed in this area!  Here's what I show currently:
 >
 > .\"------------------------------------- aiocb ------------------------/
 > .TP
 > .I aiocb
 > .IP
 > Include:
 > .IR <aio.h> .
 > .IP
 > .EX
 > struct aiocb {
 >
 > So first the indented paragraph was replaced (or proposed to be
 > replaced) by a relative inset (.RS) and a paragraph break (.PP).  It's
 > not visible in this diff where the relative inset ends, but I reckon
 > it's right before the next tagged paragraph (.TP).
 >
 > Now, the .PP is being replaced by .br, I guess because you want to
 > eliminate some vertical space between the paragraph tag ("aiocb" in
 > italics above) and the following material?
 >
 > However, .TP already does this for you when the tag is wider than the
 > paragraph indentation.  You probably discovered this yourself with
 > "ptrdiff_t".
 >
 > I get the feeling you're going for something specific in terms of visual
 > presentation.
 >
 > What is it that you don't like about the following pattern?
 >
 > .TP
 > .I typename_t
 > Include
 > .IR <header.h> .
 > .IP
 > .EX
 > struct typename {
 >      // ...
 > }
 > .EE
 > .IP
 > Notes and commentary.

That's the first thing we tried; actually if I remember correctly,
that's what Michael suggested first.

But as you said, when we documented types with a long name such as
ptrdiff_t, the alginment broke: sometimes Include was in the same line,
and sometimes in the next one.

That's when we opted for

.\"------------------------------------- aiocb ------------------------/
.TP
.I aiocb
.IP
Include:
.IR <aio.h> .
.IP
.EX
struct aiocb {



 >
 > The above visually aligns everything by the type name with all the
 > material related to each type inset, which makes the page easy to scan.
 > Literal code is not filled, so code indentation is respected and (on
 > typesetters) the code be in a monospaced font so it will stand out and
 > align correctly.  You don't have to manage insets with .RS and .RE, and
 > you can still have as many paragraphs as you want with .IP.


Then, a few days ago, I pushed the change that you still didn't see:
Replace .IP with .RS/.RE + .PP

I'll refer to the patch for the rationale: it was a bit long. Basically,
it better represents a whole block, and it's easier to further indent:

https://lore.kernel.org/linux-man/16c0890e-33c0-d052-d7ee-39385cd79299@gmail.com/T/#m21da4dba4b3a44b0a59cad1e7eacb13a68a91636

This change actually didn't have visual effects; just source changes.

 >
 > I have some guesses as to what might be bothering you, but I don't want
 > to put words in your mouth, and my mails tend to run too long anwyay, so
 > I won't voice them right now.  :)
 >
 > Regards,
 > Branden
 >

Thanks,

Alex
