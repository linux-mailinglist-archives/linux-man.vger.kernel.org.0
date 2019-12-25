Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F5F112A8D9
	for <lists+linux-man@lfdr.de>; Wed, 25 Dec 2019 19:25:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726397AbfLYSZQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Dec 2019 13:25:16 -0500
Received: from mail-pl1-f196.google.com ([209.85.214.196]:38751 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726353AbfLYSZP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Dec 2019 13:25:15 -0500
Received: by mail-pl1-f196.google.com with SMTP id f20so9649893plj.5
        for <linux-man@vger.kernel.org>; Wed, 25 Dec 2019 10:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zUCsE52gsK6xQlfvRyMXuR8qW/SeyjuSotT96nYkG/w=;
        b=SPTmn4nQNbVrZxxTPq3SX1v9/6iNiBsmYSGTV4SPzowmwVFZgZSr2m8BvQGVtmrHDh
         bUUsRwADqLSMxvGTDQmaEEoRkHdru3syht8AEzDA43cLAQmiD3h4dPQx4zWUY6YBcOEZ
         DK1+SzCLkJPGAvKRJdVodbVW5oMk7CW9oebsDCvYwRc7BQlIglqdMsFLuYfmXMKdPq1P
         y59Qct0r8AR6e2tMI/+fnOT3lt4Y4vlE6MJ01v4TNAguE5GOS5L4675CyZ2m6CKhqWLt
         hZ6/+SiL5Dn+k2lC9axVCRWN9FaD6UJoIGW/dobvqFnu6YJwsE4+VpXzv8Swjm45owAE
         TsAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zUCsE52gsK6xQlfvRyMXuR8qW/SeyjuSotT96nYkG/w=;
        b=hjjPDlVmOw3hmtJBvqfXMP/KmzTuU+Xn9+KVCqhZ9r37j5BhO3MlfiYow1N0vdLlu+
         beXgmolSGUd5OOUpYsj6SJnFxyZVMnd5gZA2c+Jd3FrwmuX9pqdM1988odveN6OhIEOT
         s7POM2XmWspVIKYOZ8HlArcTP6MslkvsJVK1uLcMUr5u4JpmYD2CgYpyb1jXuBbuFYCt
         Pulv7KNAGtrPlMTB1JIQmuvnxPPy4J9+UmSiY3Tznu4GpS6zs8iRFOxLqeYna5tu4woR
         bFuYTd4axAGh8CEAGrSjZ40k0BgnMe1ZeZoSyutxmQ3KevkM3T73m1VGCcRjyIBMbifx
         tCmQ==
X-Gm-Message-State: APjAAAUEKIEG3qC+MZUZDGVbtAhXWOY8ObLh9WlH8VcdfF8mYLALvXxj
        /5vhTld0O7mQX2C6GgQzK8VC9O5+
X-Google-Smtp-Source: APXvYqyAQwRmSW2Zz9ZaM52S/kUgL4f9PO5TkoRE1CrqSezA5eGM1GpusE/C1x49CfPRnwdRr+Kpqw==
X-Received: by 2002:a17:902:6544:: with SMTP id d4mr43384738pln.278.1577298314738;
        Wed, 25 Dec 2019 10:25:14 -0800 (PST)
Received: from [192.168.0.105] (222-154-25-17-vdsl.sparkbb.co.nz. [222.154.25.17])
        by smtp.gmail.com with ESMTPSA id p185sm33841223pfg.61.2019.12.25.10.25.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Dec 2019 10:25:13 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: typo in ioperm man page
To:     Sergey Oskotskiy <sergey.oskotskiy@gmail.com>
References: <CALzkOGiTYq8t1q_MXYpH4apF6nvhQsL3MNwbsULbKxY3rQe1cQ@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8519468f-e9e6-9a7e-8a6c-8ef18cf24213@gmail.com>
Date:   Wed, 25 Dec 2019 19:25:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CALzkOGiTYq8t1q_MXYpH4apF6nvhQsL3MNwbsULbKxY3rQe1cQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/25/19 8:51 AM, Sergey Oskotskiy wrote:
> Hello Michael,
> 
> I think the ioperm man page
> (http://man7.org/linux/man-pages/man2/ioperm.2.html) has a typo:
> it says "ioperm() sets the port access permission bits for the calling
> thread for num ___bits___ ...".
> I think it should be "...for num ___bytes___..."
> 
> With best Christmas wishes,

Sergey,

Can you say more abut *why* you think it's wrong.[1] That would
help me investigate.

Thanks,

Michael

[1] At first glance, I suspect that the existing text *is*
    correct.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
