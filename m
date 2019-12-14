Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0041F11EFCE
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2019 02:55:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726170AbfLNBzJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Dec 2019 20:55:09 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:38255 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726046AbfLNBzJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Dec 2019 20:55:09 -0500
Received: by mail-ot1-f66.google.com with SMTP id h20so1372533otn.5
        for <linux-man@vger.kernel.org>; Fri, 13 Dec 2019 17:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/9YpEeanzofmVoQxxy2j4GvV/+zRrKhvyqgPGkLwDRM=;
        b=RbpjQvHhSViN+wMPDbq9Bl69xhlgtf/R78PD3gQlJhfYYToCT7vrraPw9vZT/61trz
         xLCij7vrljdZVq2d7K9DBdFw+oJzVJPsQjWldcYWwist3H/5wlS/KRobu+674Z+vD2Ea
         0WP6Fmh5p1uPy/zQQEhl8GNDdswHmMDuH7oo9e2+OH1iQt4dvPUjEpXoPapaPimEGOlQ
         2LZoU4ihkeuCiqDjAxXIuoQYNipm/obEblUcGzypW5SuI5ydum26lGD+GWXCLDS5t49w
         XiHeelBqqbvyG2Rb4m1MolArYK1QrT78LOuyjeVMLif5KtFn9cXZdMlTLQBPqkrTRjHL
         GkJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/9YpEeanzofmVoQxxy2j4GvV/+zRrKhvyqgPGkLwDRM=;
        b=kMeIYSkWCRjudu9fR4UZP1Huj0rHT0nL85E23HZL8WcrUKl3Om4De+M7xsBS/wWWZk
         bQ5MA2dI7lat4FBSY7il4J672k8dEWQUPbXDSBY0wmlr5Uzh5YitgT541vm9MlPVc1l0
         v8hqBwKq1K25I+X3kBj2fJ6ldSSAnEsXslFrvgdWEarLytPWwhMhzgZUmxcBReiaBjFD
         MDnO/xewuyaMBlxugxJ9zdJSopkcOQFjwq9/NxA7I1SwUJDKNw3NWUvg6EtTrS9uSf4p
         Jtcg+vYhtF2RgFTSMPSQ95WMdzrKhdjVhF7kul1HE5dGGjaMMafMqnknQliOEe985Azj
         ZHFw==
X-Gm-Message-State: APjAAAUcsVMZ189Pxoqjapsp243PiJhluFy2aU0syAK2gw7Uh6YsYvQq
        APq8NLcNi6bpfk+g4Oe8BsVEFJGRQOU=
X-Google-Smtp-Source: APXvYqz9stt8BN/JTXeObeqR/Pb8qpduw8/g3RIm+bFmUpE3YZPszUwztdLmOcXBRiXWC2QQT9AHQw==
X-Received: by 2002:a05:6830:2306:: with SMTP id u6mr18918236ote.78.1576288508195;
        Fri, 13 Dec 2019 17:55:08 -0800 (PST)
Received: from ?IPv6:2600:1700:dac0:2450::38? ([2600:1700:dac0:2450::38])
        by smtp.gmail.com with ESMTPSA id h132sm3981137oif.44.2019.12.13.17.55.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2019 17:55:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] clone.2: added clone3() set_tid information
To:     Adrian Reber <areber@redhat.com>,
        Christian Brauner <christian.brauner@ubuntu.com>
References: <20191202142740.59402-1-areber@redhat.com>
 <20191202221452.4obywepdevq5dq2w@wittgenstein>
 <20191204070012.GE34164@dcbz.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1dee03d2-e3f2-2f3d-f5a9-a657ce9ba85d@gmail.com>
Date:   Sat, 14 Dec 2019 02:55:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191204070012.GE34164@dcbz.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Adrian,

On 12/4/19 8:00 AM, Adrian Reber wrote:
> On Mon, Dec 02, 2019 at 11:14:55PM +0100, Christian Brauner wrote:
>> On Mon, Dec 02, 2019 at 03:27:40PM +0100, Adrian Reber wrote:
>>> Signed-off-by: Adrian Reber <areber@redhat.com>
>>
>> I'm generally fine with all of this, so:
>>
>> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
>>
>> but should this maybe also mention that a pid namespace either already
>> needs to have a pid 1 or if it does not the chosen pid has to be set to
>> 1. In short:
>> "Callers may only choose a pid > 1 in a given pid namespace if an init
>> process (i.e. a process with pid 1) already exists. Otherwise the pid
>> entry for this pid namespace must be 1."
>> or something like this. 
> 
> I like that. I will add this to v3.

Do you have that v3?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
