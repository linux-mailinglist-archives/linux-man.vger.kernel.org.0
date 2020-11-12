Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F2502B0EA0
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 20:58:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726787AbgKLT6D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 14:58:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726702AbgKLT6D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 14:58:03 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5BBFC0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 11:58:01 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id k2so7340183wrx.2
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 11:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Av8dEpga9jOj30GKgLp+4xx+YH19Of21BAaF1kMoyec=;
        b=t04XUQTrBW5ehVVkwVoZXc05y/5dTZDWwOHDeYHjru4TVnez9gPwhYuLD0XUDDZNgA
         W/bWfwdCMovKG8Ns7c5yLMzUO4XoAZDMbzFK48BAlwxTrbFrNf2D4LbLvNwo3Ik+HVbG
         WETLm2XD5ci+gRKOIeOP4scN1jkTNjU9vf4d76nGQSCb5QCw7y6NUwHrW0a1/1L9TwEp
         tMdSeHuf2HcXsAb7THbkfVWUIJZl9tEngRCmwRkFQiDYjvzjLDLi275tCBXAA4kibtoA
         uyCq8hOQTWe/0H3TaErDzxTyL6H/uHwIXm44q78qm/BvgL5MOSkkut/kEyvjA/V2KsI7
         qYgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Av8dEpga9jOj30GKgLp+4xx+YH19Of21BAaF1kMoyec=;
        b=ZyZGE2e+fKFpgWBKX88JzK9Vx5s57r1Xzbo4iE2S4OQ+kRd8CkuBOLXQOwPaYFz5cx
         +uZkdaxWPn5E0ZznN4CYiMZSK8y8FrJDFt/F39OQpkyCzsOIW8tbsjX1UUByGFoNXnwP
         VZ/03yYTU6kztSqKSbtVIam1YJcmHy04QmDFa6wNktsuluMh2QbZM+uLuXYuypxlyv3L
         b3XDcjNySMDtNyHKUoSB958Irxnm32S/cM8M72e6iPFl1bgeD7UaNTjPlnnZZInaHYFy
         3cA15BGb4OSA8Ujmg4dmFU2yNctsC4aDi3xjxOncQf7gMJdZPQ/S3UdNqiwNKZKZwDOJ
         5OFg==
X-Gm-Message-State: AOAM532bLyglwDcW/AZhKhjSbNLyYjj9JBfPibiryqzTgL6x+acdXKUn
        6HHYOz0Y2swka/5Ibuc4Hy4=
X-Google-Smtp-Source: ABdhPJxeXsO3U5BSMLxG7Zk3lTcNZTatmJGjRuBTF4gn82cShRy/QQnm1h+bD4hsGJBWgGe5K24Kfw==
X-Received: by 2002:adf:f9c4:: with SMTP id w4mr1488781wrr.64.1605211080527;
        Thu, 12 Nov 2020 11:58:00 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id e5sm6859231wrs.84.2020.11.12.11.57.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 11:58:00 -0800 (PST)
Subject: Re: .RS
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
 <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
 <1ae93b8f-c6e2-f11d-0844-a8cf702f933b@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <60a7fa20-d41e-12d9-a81e-558512a74f0c@gmail.com>
Date:   Thu, 12 Nov 2020 20:57:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <1ae93b8f-c6e2-f11d-0844-a8cf702f933b@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden and Michael,

Okay, after some testing:

* [.in 4] simply doesn't seem to work at all.
* [.RS 4] and [.RS +4n] seem to be equivalent.
* [.RS 4] is different (worse) than [.in +4n]
          in some very specific scenario:

[[
.IP * 2
Lorem ipsum dolor sit amet, consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
.\""""""""""""""""""""""""""""""""""""""""""
.IP		\" Indent is 2n after this
.in +4n		\" Indent is 6n after this
.EX
I am indented 6n from normal paragraphs.
.EE
.in		\" Return to normal
.\"""""""""""""""""""""""""""""""""""""""""""
.IP *
Augue interdum velit euismod in pellentesque.
Tristique senectus et netus et malesuada fames ac turpis egestas.
Gravida arcu ac tortor dignissim convallis.
.\"""""""""""""""""""""""""""""""""""""""""""
.IP		\" Indent is 2n after this
.RS 4		\" Indent is _4n_ after this
.EX
I am indented 4n from normal paragraphs!!!
.EE
.RE		\" Return to normal
.\"""""""""""""""""""""""""""""""""""""""""""
]]

This happens in perf_event_open.2,
where [.in +4n] is used,
and when I changed it to [.RS/.RE] I saw this change in behavior.

Do you know why is that?

Thanks,

Alex
