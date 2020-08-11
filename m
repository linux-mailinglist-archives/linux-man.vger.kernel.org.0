Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 908FA24184C
	for <lists+linux-man@lfdr.de>; Tue, 11 Aug 2020 10:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728455AbgHKIc0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Aug 2020 04:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728456AbgHKIcZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Aug 2020 04:32:25 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 933C6C061787
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 01:32:25 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z18so10634069wrm.12
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 01:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yZvcHWzRJqhkCmWXIB+2ASOAqVS1+o5NhDXk9VSItJs=;
        b=PLsUCiauFt3QSeIwcSV2b9khOT0jrbP05FuJgmj1w2HerswQyV8o2I1VPbp9XRUYOD
         HdN4eMj1psJxyjoTjui9nFz/2pUUiYLZBycb5WjWIEOCqj2vbIVLXW4T/MwZqjJf/wBe
         wyoA+wE/mV9qYb/7DmjNV0EATFyIfm+cCXjCQE/m2R7nSPxqxS8q1mk/ceYoom/rq0LE
         wixdUOIYD2gSlQaGo7hptYiBN7C2rxWnkiqmTeuebaPbfNcKl3NB9N4hCFyf12iKW6f0
         CJGfXcUxMHs3bP8tneKsOY/62y9qWrPVSj9NIQHgxQrgmq1uBjTnfIuMmKyQnXIkdfxF
         JHDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:cc:subject:to:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=yZvcHWzRJqhkCmWXIB+2ASOAqVS1+o5NhDXk9VSItJs=;
        b=jm/GlJ9ifxBV54CToSdaSjX2BB/YrvJnIRAio6Q5Ral6Dc1IXjyVsyqphuqPs1AgcP
         7ucTPIBV3B123mcSZVyu7Zs7vlqqALpfGKpd7Z4cDUiB7KBF4gtCu21SrLfK9yZeKqdQ
         /CQwGCqTltgyrv36UCpgzFlXFGotHKwBK7lyIAjfic+w9UIOPbWZi7kjCFmAQi5DEL6q
         XzAoI8pm1SZMWTOKXupF25rW6TIiDNI2ulN+w2NBKbmDVqtRuF5FTdfBSHmjimRySeQj
         GH6A1sB3cY3ZBoxfe6A3z/PQhkLKQY+5TIpOgcVtJRx1W5tHP19BC1UZaR8CuW+DJyLJ
         R3aQ==
X-Gm-Message-State: AOAM532DAZQ4tlQHaPUKSU8j45eC6axKRmn+BkAG26UKXe0MgP+vBm02
        O0ZwTsycovSkpV+di7CeaC+CK6t1HvM=
X-Google-Smtp-Source: ABdhPJyAf3DxPK92rZKw7Kpd3TFtm84nYn/JU/wfQOCjCpMrwk2pJGdN0FeS04xRzRwMo/2/lTc/Dw==
X-Received: by 2002:a5d:5588:: with SMTP id i8mr28427711wrv.177.1597134744428;
        Tue, 11 Aug 2020 01:32:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.googlemail.com with ESMTPSA id 6sm3996505wmf.4.2020.08.11.01.32.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 01:32:23 -0700 (PDT)
Reply-To: mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Andrew Josey <ajosey@opengroup.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Elliot Hughes <enh@google.com>,
        Joseph Myers <joseph@codesourcery.com>
Subject: Re: Pseudoterminal terminology in POSIX
To:     Larry Dwyer <larryd.kbd@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        austin-group-l@opengroup.org
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.lists@gmail.com>
Message-ID: <722119e5-9047-7c47-0d1c-2afeb946d5ca@gmail.com>
Date:   Tue, 11 Aug 2020 10:32:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/9/20 1:18 AM, Larry Dwyer via Libc-alpha wrote:
> How about the "control" side and the "terminal" side (of the paired 
> device files)?

Thanks for the suggestion. As far as I'm concerned, that would 
also be an option worth considering.

Thanks,

Michael


