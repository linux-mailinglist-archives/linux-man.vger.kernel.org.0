Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44DE020AE93
	for <lists+linux-man@lfdr.de>; Fri, 26 Jun 2020 10:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726003AbgFZIyi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Jun 2020 04:54:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725850AbgFZIyi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Jun 2020 04:54:38 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3702FC08C5C1
        for <linux-man@vger.kernel.org>; Fri, 26 Jun 2020 01:54:38 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id o18so4152042eje.7
        for <linux-man@vger.kernel.org>; Fri, 26 Jun 2020 01:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=woJkQIjeb20qDpaTA5AdD32a+Iukxf+56CGseYV3DAk=;
        b=BrIGw6n20Fu+7T69K5+mye7WKBpJqHvVH5oJxeEGTx1nKAz3IRAoOHbbRMSqCd13/n
         0W7NPaebG2umbi8ocAm76J884nRbmN98D/bNTP4ZTtlqSd3oT/wiIK8qrlWTy3Fb45Yw
         uhTQP+Qly3YNPLKH28dbVL/deEK1bTVCdHmKpmMzPtZOlYdeu/FArLd5jyMNlYEIneeV
         2tFDLf/tOkH7TVMjTLMm2zgb42bu2UCquA3Yb3HS3ETpl/ogBpM7N6vVHej4HCMnUQTB
         kaAJ6uaBP+Doa+yYuIysQPXkkECV31ZRNbonbjK9/8TDnOAez/VHyP1JqAHkj4A4W2fg
         jDjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=woJkQIjeb20qDpaTA5AdD32a+Iukxf+56CGseYV3DAk=;
        b=D6ltTjMYj31Oqdojrp8Gf+yUh1/H7qS61n4yRbaee9Y5nkH1G6+eWx02LsxUNzDWdH
         vZocAD7V80arX/t8Puivk7AtAYJycn9z4fz+eok7KI+P60PpZf/HhbzLLtKylurZvb3u
         M/ftFgVeRdPDX4BcRWyqyTVJilgiaC4NvXdG0+R0U2kK/1la/i4D7nbWaY/DR0/aieFu
         AQAVVWkGZHFe0x51ymUyhlui3fidP1DK3TJq1GaVUqDu+9VEuWcm02RamuWd46TE8qBF
         6qa+csgl+DT8H5Gh2F0Wy/bl91Z7NLi0eAr+oPnc565dCbaWs9O4sBCjVITezqLKAAw/
         fqwA==
X-Gm-Message-State: AOAM530riW0gRym6sK+Ct7VPAhywRL6R8A73hDPM3YUjgHmTqBp5CwQC
        NeWAkhJWJx0IpxrnIw68zuVqBOiw
X-Google-Smtp-Source: ABdhPJzjoIhDoNVFchAjNOySRl3Sxz5/hr5QzP6xGwhwi3tNJlE8pfN7QZbPdO+2uGSumzUlj7Lwfg==
X-Received: by 2002:a17:906:46cd:: with SMTP id k13mr1605315ejs.312.1593161676821;
        Fri, 26 Jun 2020 01:54:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id sd15sm11109472ejb.66.2020.06.26.01.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 01:54:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Carlos O'Donell <carlos@redhat.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: POSIX writer locks can't be recursive
To:     Kumar Kartikeya Dwivedi <memxor@gmail.com>
References: <CAP01T764kz5T+m+8sV0o30enBL1TagF7RQSjU0XcVJ0PvL0PTg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8d7edc37-6b5f-1dd9-5f7f-b4e15a9ae39a@gmail.com>
Date:   Fri, 26 Jun 2020 10:54:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAP01T764kz5T+m+8sV0o30enBL1TagF7RQSjU0XcVJ0PvL0PTg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Carlos,

Could you comment here, as this was your text in pthread_rwlockattr_setkind_np(3)?

On 6/25/20 2:32 PM, Kumar Kartikeya Dwivedi wrote:
> Hi,
> In pthread_rwlockattr_setkind_np(3), the explanation for
> PTHREAD_RWLOCK_PREFER_WRITER_NP reads:
> 
>> This is ignored by glibc because the POSIX requirement to support
>> recursive writer locks would cause this option to create trivial
>> deadlocks;
> 
> I think this should be "reader locks" instead, since it is
> undefined[1] for a thread holding a write lock to call
> pthread_rwlock_wrlock(3) again (glibc returns EDEADLK, musl simply
> deadlocks). There's no such requirement in POSIX either. Please let me
> know if I'm missing something.
> 
> [1]: https://pubs.opengroup.org/onlinepubs/007908799/xsh/pthread_rwlock_wrlock.html

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
