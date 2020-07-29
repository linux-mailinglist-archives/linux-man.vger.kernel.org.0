Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5CC5231CE0
	for <lists+linux-man@lfdr.de>; Wed, 29 Jul 2020 12:46:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726365AbgG2KqM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 Jul 2020 06:46:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726299AbgG2KqL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 Jul 2020 06:46:11 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B535C061794
        for <linux-man@vger.kernel.org>; Wed, 29 Jul 2020 03:46:10 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 9so2266888wmj.5
        for <linux-man@vger.kernel.org>; Wed, 29 Jul 2020 03:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rJ0MDPL2R/jstv/WSE292trQz4pwff5SDFrTVRjSP/c=;
        b=Mw1IonzQAciNoKBG1fYm2/ABXbZEn9oqqrgFFVsJOv+YRAQ4L744MxmtW+Rn8VEiPI
         iAz4EnfDMz/RcyEoP5XaxtWSSOA/QaouGJ9S0weDmI+533MJqoMM1EgC/YLzzUmRBhQe
         J+7PS2g3znEARmgdMfR5UzmKhJCvclPLBYHQ7voEdoBmvqOvsiXd6Z49V3D09xQm4FaV
         5WYOTzEgMBih+1/4FROXj6ha422D4Rzt/vu/2/GFuZ+0cEoTdC5DFKPQDDcXio3tgL9S
         OGCCDZ9eRKIYaQReHOaQilj3XcMGm/aflxyb7s+DcAEfv1PWqMZbtdUxN0PEcaVMiB1R
         c9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rJ0MDPL2R/jstv/WSE292trQz4pwff5SDFrTVRjSP/c=;
        b=o2PVDNBLTNPjReLFv2L30HJInTopDNX5mvsn69pi/SX883jp9ilV6pEcYAmv0iHEJA
         dI36TEtl3Sn2qZ0AXevzAdKcTL7qQsbLCu8vzQmAIUm3b+5XPVeuIJKGp5ALEZnrq861
         SXohtS/3baNjv16Rx3gHgumWpW2YJWjC2CpwmHisX9vtUs/EkWWj3NdfiBkmRrn6F4NJ
         KA5hM81WwzXP3woY6XMKMvfhmWZ69PwtEAy6tEkTCIs7mehTT83RvJjc/msPDtVYVwUE
         h0s7ylEiVgjYKstV3jRBaSfAMEaATdMlr2qOxBbKoEz5wEgJx50Oj8ihGdPhastEOtHp
         FzAA==
X-Gm-Message-State: AOAM5326JpyZazIqqklbif5bbP5XXuXlDjQJ4PpK4syrPEb48sk7eM9J
        kZoaVrVW61jpjfFgE4yMDjugEzc/
X-Google-Smtp-Source: ABdhPJyUUodDulYBKekXD3uml3SMt0qOcVTZTvnNYxoKomLEAYbJ/T4/CyP/22vNTHaahJm+GKlUUQ==
X-Received: by 2002:a1c:9d53:: with SMTP id g80mr8081790wme.70.1596019568770;
        Wed, 29 Jul 2020 03:46:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id c194sm4713161wme.8.2020.07.29.03.46.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 03:46:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: queue.3: Document CIRCLEQ_ macros
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <581130f1-f6eb-5845-40e1-220f7edae526@gmail.com>
 <CAKgNAkiCbfZjjTGp6Dy02ejMKRz5+NbKeNN8Et9yW8yvSbuVhA@mail.gmail.com>
 <e842e268-09ad-80c2-5324-7efd5610c8ef@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8733c624-a54e-92c9-16a7-68311cbbb8ab@gmail.com>
Date:   Wed, 29 Jul 2020 12:46:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e842e268-09ad-80c2-5324-7efd5610c8ef@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hola Alejandro,

On 7/26/20 10:01 PM, Alejandro Colomar wrote:
> Hola Michael,
> 
> On 7/25/20 9:15 PM, Michael Kerrisk (man-pages) wrote:
>> Hello Alejandro
>>
>> On Sat, 25 Jul 2020 at 12:13, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>>
>>> Hi all,
>>>
>>> I'm going to use CIRCLEQ and I found out that it's undocumented.  I'm
>>> going to document it in queue.3 and I would like to know if someone is
>>> already working on that to not duplicate efforts.
>>
>> No one is working on this, so it would be great if you could document CIRCLEQ.
> 
> Genial!  Lo haré entonces.

Perfect. Thanks for volunteering.

> I found out that there was documentation in the past and it got removed 
> at commit ``c0f21a05f0c6cbd25677fdeef5dc1f1b2e9ffbb8``, probably by 
> accident, when reimporting from the FreeBSD man page to fix some other 
> problem.

Yes, that could be.

> I'll base my changes on those old docs.

Thanks. One unfortunate thing is that you'll need to use the mandoc
macros, since that page is one of the few that uses those macros.

> Alex
> 
> PS: Me dijiste que tenías que hablar un poco de español, así que aquí 
> estoy para ayudarte ;)

Gracias. (But we better stick to English on this list...)

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
