Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE0DF1ADB3B
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 12:37:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728761AbgDQKg7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 06:36:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728627AbgDQKg6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 06:36:58 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31F1FC061A0C
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:36:58 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id g12so2457430wmh.3
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZvrVYuij+xBQqTOfMNJ3hAtBFOZOuq33TXj1ZfJ7RiI=;
        b=caUuXYZT0ODjhClFPESZw7K9W4pEmMo22zIKv0w1rrVd2vREyNCXBXr2q6vxan05eI
         Ugukw0Q+Gj0Y6fEsVDD/PHxCgMZPEyVpFv/FK3M35i5KK+zm1wV3KP++6UWlloU+qxDI
         JVFVpxkaoBFPsD7IaB0/JInv4fzDy3s27DstDbROOtzKggJI8ZAYMizg0Y56QZ+i4gLQ
         ZR+0tRLXoX2nKtO3xJt2eqtiC38Fwo3PWk0isMn2sA3k8bkFFTE8zPNjtU3nqrj8zYXe
         0xKGKK0p00kT6G2jjs2k0BABJVm/c8eBSfSxqBOJsFd2bcjT97duZjsxY2nCgE8dv4fk
         M1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZvrVYuij+xBQqTOfMNJ3hAtBFOZOuq33TXj1ZfJ7RiI=;
        b=L1ZzLRcrmOkbSJ4rtAOE5buy9LeTbCDMt6trqyPM+IS6+1Rb28SeUlkVC+6H1GRI7X
         5qgCZU8l9AxRnEF/8I7B1yUk+JvVeR6oUHbcZsFatJBuSYzPI6P6S+j807XfwTa0Urm/
         74avDKMk82xjypar8xLZcqQMjMAf7zuVfoq9rPz0iuaWKxQKZzTS+93CJO1+P2PiR7e/
         wiCCLMKbxLKbTyJPVENYqHk7uuMLCAUHgNS8a2sWLdocLwHgVllJ/ZzkR3OQuRTaSUeo
         c84AB+O7dI/nZ1/94bYsNeNTD6MWeYU/j4BDopK1Kgt2/Vtr6rPQLw3PsQ8GDqVAT8I/
         bZ+g==
X-Gm-Message-State: AGi0PuaF6BHZe4vaFbJBbD5qzxXQlja2HRJFajg3UCrJWfrehsDGxExM
        PApm1H9DOgi+CUPK300/7Fk=
X-Google-Smtp-Source: APiQypJOwF34W8aZ2l7eyVnmeHCRHJRVJ4qb8bnWbyqI9MOWiQMF43bDOccWLudxelUEEtXaa1v2PA==
X-Received: by 2002:a7b:c38e:: with SMTP id s14mr2550318wmj.12.1587119816952;
        Fri, 17 Apr 2020 03:36:56 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id i16sm13535375wrm.8.2020.04.17.03.36.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 03:36:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH v2 1/4] posix_spawn.3: Document implementation using
 clone() since glibc 2.24
To:     Florian Weimer <fw@deneb.enyo.de>,
        Olivier Gayot <olivier.gayot@sigexec.com>
References: <20181016193751.4473-1-olivier.gayot@sigexec.com>
 <20181016193751.4473-2-olivier.gayot@sigexec.com>
 <87d0s5hsfs.fsf@mid.deneb.enyo.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <eedc9fb9-fcf0-606d-333b-dc522eac86f7@gmail.com>
Date:   Fri, 17 Apr 2020 12:36:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87d0s5hsfs.fsf@mid.deneb.enyo.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Florian,

On 10/20/18 11:35 AM, Florian Weimer wrote:
> * Olivier Gayot:
> 
>> As a consequence, the statements regarding the use of the flag
>> POSIX_SPAWN_USEVFORK and how the function decides whether it should use
>> fork (2) or vfork (2) are obsolete since glibc 2.24.
> 
> Maybe we should add that it is always never correct to use
> POSIX_SPAWN_USEVFORK?
> 
> Either you are on a glibc which ignores it, then it is pointless, or
> on a glibc which has buggy semantics when vfork is used, so you
> probably do not want to use it.

Could you formulate a sentence for me that I could drop into
the current manual page?

Are there any bug reports about the older buggy semantics that I
can add as part of a commit message?

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
