Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3E88343332
	for <lists+linux-man@lfdr.de>; Sun, 21 Mar 2021 16:40:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230057AbhCUPjV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Mar 2021 11:39:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229904AbhCUPjC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Mar 2021 11:39:02 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA0A1C061574;
        Sun, 21 Mar 2021 08:39:01 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id k8so14086857wrc.3;
        Sun, 21 Mar 2021 08:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6/dsnTsHxDGEgi+tKREVG6SOjCWa3MQYn2Vn8B+XVv4=;
        b=nv97Hby+j8zTDYA0W4uCCruVZVaR9S5tATIH/toCj6k1V+Tgn95hOFzbunz8h3vLj7
         g0AvN0eNN9h3onF1tLGhdnFNqDFSdnZ/Y1BuJPObaiS1v3bMgyvOjPLqgW2uDMGgEbz6
         CUrCgK7XCdtDL57sBNGr8GIJPClBKwQLF7TFr6tmW+iF1/d2U2CYFVqHHKQ6/xEnHSY9
         Ojs6KT+ckrzPu4dET+aVOM1RJs+tSg6ObcnH3gg6Aa0RWFgTPqwVwtjl4Tp2AxupHH/C
         tP/3+DNlMxj7ylpT3cB3pR0Wn5PDkwu4OefZ5uQU6tNoVeAcbVR+uGNPbbide9CyZ917
         GX7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6/dsnTsHxDGEgi+tKREVG6SOjCWa3MQYn2Vn8B+XVv4=;
        b=iUKfUIR4LkoOIAI7CnNYPwVnzqKt9zClyhcGPlr/bI21+AcmRbbV8nYgCy+s1q1fBT
         vnyxQb8qXcyyqgcbtrJqQQ4xqMl/UwpN4Zisa/KElKPXCOwDJw0ImEU4mu5EQq+qGfXk
         HrYjmd1G+Pr+zKS78/c8xKwm9PowT223aPwKEV2CYc6pkGFTyGPDaJZ4N0wqjGDw/UH8
         4Hh/U/tdSCutGSc6Nl4PVyu0+ilSwzSNdMI2RRtlmcz01GO9WFHnn9IrSAM9sSURksGw
         1nI6U+ck3kEP6ikl8lWkMgiRCRawwR81of3FcAL8eWQPMUiew1tZewRgc3970JVWbjcV
         8Iuw==
X-Gm-Message-State: AOAM532RrsIqVai8NBQ7fNcKJSkr7pEYgxXNxjToP18HU2KOTC0RVr2L
        RaCN/O1XcPG3MhLdThUwZNy4D/p0o7Y=
X-Google-Smtp-Source: ABdhPJyy9kbD6aH1jF8sSwQtcIBWWkjc3eT69VG5IkuLmhPCcOLcvMQxXpJJArN3XUKLNBerUKhyAQ==
X-Received: by 2002:a5d:5906:: with SMTP id v6mr14232344wrd.137.1616341140245;
        Sun, 21 Mar 2021 08:39:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id s83sm14179576wms.16.2021.03.21.08.38.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Mar 2021 08:38:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] close_range.2: new page documenting close_range(2)
To:     Stephen Kitt <steve@sk2.org>
References: <20210123161154.29332-1-steve@sk2.org>
 <e761f00d-751f-f782-9af1-c5f868d52df0@gmail.com>
 <20210309205309.7e2568c9@heffalump.sk2.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4eb789d0-5914-23ae-3ab9-cbfa9b6b9622@gmail.com>
Date:   Sun, 21 Mar 2021 16:38:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210309205309.7e2568c9@heffalump.sk2.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/9/21 8:53 PM, Stephen Kitt wrote:
> Hi Michael,
> 
> On Thu, 28 Jan 2021 21:50:23 +0100, "Michael Kerrisk (man-pages)"
> <mtk.manpages@gmail.com> wrote:
>> Thanks for your patch revision. I've merged it, and have
>> done some light editing, but I still have a question:
> 
> Does this need anything more? I don’t see it in the man-pages repo.

Sorry, Stephen. It's just me being slow. I've made a few edits,
replaced the example program with another that more clearly allows
the user to see what's going on, and pushed to Git.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
