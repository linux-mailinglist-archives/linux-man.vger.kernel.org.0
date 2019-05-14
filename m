Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 81D601CC44
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2019 17:53:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725916AbfENPx2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 May 2019 11:53:28 -0400
Received: from mail-wr1-f50.google.com ([209.85.221.50]:33193 "EHLO
        mail-wr1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725901AbfENPx1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 May 2019 11:53:27 -0400
Received: by mail-wr1-f50.google.com with SMTP id d9so11453279wrx.0
        for <linux-man@vger.kernel.org>; Tue, 14 May 2019 08:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk-org.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WkaBeisknPzTEEhZ9oPtkLXrONmuwvhiGuExsBXrmJc=;
        b=LQCd/JMremp7ffwJ9w3Q85gPbXU3s3ofqm0IbKBd/XZzpAmsrIemjPmlLcqohNz/j7
         wXf5XOQKen2dmzYAE3C7OkxEuPBiMsEbDr9jhgzg1/lO1A60Z4anc3cieNrutZq6+8+F
         yVvsrAlZ5U7JrPqMHg6H9lwlUGqQyEhapDFZP3Yy115iVvGLg+DyXx3TFf7HU/1s/tmU
         dGzOu1X/iQPURxJy4Y/nokKH/+geE8rGA90v/4fr3JPmr1BonA9Lt2hRS4ghtLo31iO4
         aToNSDNO4rHbRBvrZLGBX+bs9TSBUP53xoTP9VsgnuI8xE+IRQkhVhyIQaysN3gZLhKV
         cUxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WkaBeisknPzTEEhZ9oPtkLXrONmuwvhiGuExsBXrmJc=;
        b=eaqoaSmq7Figff/2cv/rDmRbpOZvC9JsNjxHLNsEiHRi6gTgwWk3uV0E43UeZLOlEC
         8x1v7tyX6/sQOrM/Z5nsp78kPA+W8KNex131xcPrRehxWw/0AT84SboV9CC97q2I0WzO
         1cSniMhXhv5h7vHVSi+EFwHybpPBX3GO02iv8SOSdrgFlwMx4Je5vuiFw0VifmYPr8W9
         4ZpHHdkGiFFxHAOccOm98CP+uiHydUBV/zTHPN+++z2I1HhumSONSt7e47RGwy34HBUE
         J4trzGD2giY/73iEmsSlcimEau5eg6e2HhFoAXNGNxhQnwWYZKghimyd7Nt/FJujSDX0
         jzuQ==
X-Gm-Message-State: APjAAAX3ZGnnmmXXA8vYsS3rFOPPaQr4DenOQNtwlDF+Z4f2B5nYfa7z
        6VrjXTnPk4EBRlyvc3dEk6H6rFz0JTo=
X-Google-Smtp-Source: APXvYqwre1VNK4tctSmfaVDGXCTPD+rUfFxnoWOj1CBI6vUqzmrmwd2raV7oFVo2xtg4hx3AkfXmRA==
X-Received: by 2002:adf:8b83:: with SMTP id o3mr14941065wra.278.1557849206029;
        Tue, 14 May 2019 08:53:26 -0700 (PDT)
Received: from [192.168.1.111] (164.98.189.80.dyn.plus.net. [80.189.98.164])
        by smtp.gmail.com with ESMTPSA id o8sm34911520wra.4.2019.05.14.08.53.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 May 2019 08:53:25 -0700 (PDT)
Subject: Re: REALPATH(1)
To:     mtk.manpages@gmail.com, Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <e2ace30b-b8ca-6dc5-a0d2-b5e56bfc8fad@jguk.org>
 <20190319153117.rti2udmkfvileho3@jwilk.net>
 <CAKgNAkgY9qzAa5jZiKSxdJDwqzLDPfeOme5tHPrM+n6FEyhimw@mail.gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <3e8f1d3b-1ed5-8573-3cc6-99c5a01d140c@jguk.org>
Date:   Tue, 14 May 2019 16:53:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkgY9qzAa5jZiKSxdJDwqzLDPfeOme5tHPrM+n6FEyhimw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 08/05/2019 19:40, Michael Kerrisk (man-pages) wrote:
> On Tue, 19 Mar 2019 at 16:31, Jakub Wilk <jwilk@jwilk.net> wrote:
>>
>> * Jonny Grant <jg@jguk.org>, 2019-03-19, 11:54:
>>> Could the SEE ALSO be hyperlinks?
>>>
>>> http://man7.org/linux/man-pages/man1/realpath.1.html
>>>
>>> SEE ALSO         top
>>>        readlink(1), readlink(2), realpath(3)
>>
>> It's a known problem with coreutils man pages:
>> https://www.spinics.net/lists/linux-man/msg13234.html
> 
> Yep. And this annoyed me enough that finally I've made some tweaks to
> catch at least some of these xrefs in my scripts. So, there should be
> some improvement in the next refresh of the online pages.
> 
> Thanks,
> 
> Michael

Excellent Michael!
Jonny
