Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA8C52BC253
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 22:50:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728583AbgKUVrv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 16:47:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728581AbgKUVru (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 16:47:50 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8854EC0613CF
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:47:50 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id p19so10650510wmg.0
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GghNOEM8T9BMzKE6oGZxSo+BXQXCvMtZ0GA6KUcfCf0=;
        b=AeAlBWqrJC/BqrQRcFkNCRpIUIup+5hFEhzr/YFDzy5MxG8PtB+aP7UR9f88I8O21s
         5mJQf8nOj3tFgibpreEzXdfkyluk8a7RtO45VbEmgRU5aw41DKN55UH7CRasOC2rBZC+
         2Kh6NnsiOp6uQHu4JsI5HqvZdjTJiEGFIVUW/Vr+x2OeWh69TFfdiFXP7wNrAcTCQgRp
         ZY9sJsymXM3EHvS5AvgoSme3rdssCrofIf0/KN6dKasXoRRMGKNgRxU2yf3EcxOwudxI
         sfFgyTsnWB9JNiNd/MWiNCPQZqaaYul8o+ajePLU5rU6MzJ4Zssw8lE1b1ZTpCG+f8aF
         yIVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GghNOEM8T9BMzKE6oGZxSo+BXQXCvMtZ0GA6KUcfCf0=;
        b=QFagkKI+3jPMB1kvcg9X98MT5BdVq8GpAvIrrGvfPmE7CWMevBLouudJgthXGyMX1y
         0ifzqGp06l5F43vr+f3cd3pkDkjGRusnTazMortDpxrn53F4m73tsFVKFce7pZARS2gm
         OHvxED/N6CfFBF7mQ4dCa7coxhNwPV1XyO/Ckh/fd5DATtyK9EELvqZOhPQK62Rgfo8p
         6IvcxCqmMJZp7QpH5jEixtZ0gpPO8YgfxH/2vZx+6xVzwJW61mcLpaIOeooSlqp8qcI+
         81AkJH0Q8v9ZLFEieE7cHamgJKCPSKg90ChwlvLHzBp+C30XXJAl+SkwWvxq8Z7cU/VZ
         gB4w==
X-Gm-Message-State: AOAM532WnNn5y8pHLF1LSo9+XoLGbEGF0YLOo/pdmBZzG+v37k8ASIl4
        hJo607XRZFiNk7wCtpS5J2igoHlsNJGXkQ==
X-Google-Smtp-Source: ABdhPJxPi+KN3OHcYSR6tkZR/gpNFnvN+B8KxodThYZBLMk/+xtcUaqxBPAlfuM0Eh+n5vNOQaT5+g==
X-Received: by 2002:a1c:790b:: with SMTP id l11mr17094072wme.53.1605995269057;
        Sat, 21 Nov 2020 13:47:49 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id 25sm8351831wmk.19.2020.11.21.13.47.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2020 13:47:48 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] capget.2, execve.2, readv.2, socketpair.2, utime.2,
 utimensat.2, getloadavg.3, proc.5, mount_namespaces.7, unix.7: ffix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201119174656.131249-1-alx.manpages@gmail.com>
 <a578e7e0-8359-6257-1534-25d54a637017@gmail.com>
 <a0006cce-d243-4804-5f47-cd467aa5eb6f@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2c1df93c-15d9-fb81-b85e-1a4a310b0cac@gmail.com>
Date:   Sat, 21 Nov 2020 22:47:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <a0006cce-d243-4804-5f47-cd467aa5eb6f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/20/20 10:55 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> As you said in other patches about global changes,
> I completely agree in that such changes,
> if automated in scripts,
> are very dangerous.
> 
> That said, yes, internally there's something in my head
> telling me to do such changes when I see them.
> 
> And yes, one good reason to fix them is that consistency
> simplifies scripting a lot.
> 
> So I tend to slowly fix some of them
> as I see them while fixing similar things.
> But I try not to add so many of those fixes that
> I would distract from the main fix.
> 
> The rationale for why some an not other fixes in this specific case:
> I first grepped to find the files the files that contained
> {.IR var [x]}:
> $ grep -rn "^\.I[ |R].* \\[.*\\]" |sort
> (BTW, I forgot to add that script to the commit msg,
> I'll add it in the next version).
> 
> And then inside the file I ctrl+F'd '[' to find them.
> That showed me a few more lines than I searched for,
> and found a few more fixes to do.
> They weren't completely unrelated,
> so I added them to the same patch.
> That's why I only changed some of:
>>> -(26) \fIstartcode\fP \ %lu \ [PT]
>>> +.RI "(26) " startcode "  %lu  [PT]"
> They showed up while finding branckets.
> 
> However... if you feel that's still too much for a patch,
> I completely understand it, so I can separate the changes.

It is too much :-).

> Please, tell me your thoughts.

Please, let's just start off with one patch that implements
your original idea: {.IR var [x]} -> {.I var[x]}. Then we can
discuss other changes.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
