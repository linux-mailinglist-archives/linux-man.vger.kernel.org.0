Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 347592B517A
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 20:50:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730135AbgKPTsb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 14:48:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726156AbgKPTsb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Nov 2020 14:48:31 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8AEFC0613CF
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 11:48:29 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id s13so421185wmh.4
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 11:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VdWRrIfLJ5YehTrhGa+SiAvEw78dbyxUR0BVUndh/hA=;
        b=urf1ZINNX84dSris/bphnTxah/DIlyXKMtHNTTWR2lnfnaB3iknoliYgsR8E2/xb8l
         piPhfV43oyAEZDAXSO5WvA/f79ECxgYTSjTga/8lUwsRSCEp1MeBtzvDAUIVxoJuavo8
         GRRyZX0PAKZDS7GNnADBNwQuDV+CfgxlHETzrITyflDVIhlrda6LYvxeJ7bDW3BfTM/G
         FWIw/xqPLW94+AHXIvToHKhk7Nvg6l5pCBRn3Pg2dWMjKTme/mFhUIyQ0BxeAAL++MuH
         nW1PZFV/GYPB9Rgz/v6eUaoj4EpdlM2WJ4Fil9NN6wSPKm8JAJe94gzpcqvmqJJRvMcc
         zp5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VdWRrIfLJ5YehTrhGa+SiAvEw78dbyxUR0BVUndh/hA=;
        b=iyjo54wm90RuJ7Rww7J/iSZf+0iahe/6yPdGUBDG808S4ZYnz5sCc4G4BRRM+MBTC0
         Wt5tE2I2UN+GJCALE1mD3vZJZrn8/aLULohU6ZJUP2vlvfxL9AKthHhKB3A7+DVlDE1Q
         GuI/Fs6EU6R0kCAfYAu15ZDAcr/Ugq3s7F+swKrzI4ka82xSNk/eVNW0xlOvLbjloZ2c
         IvhOFroxqKtYZiYI8N8jZRRBf+AB2l92QHETdyyLD51Q19gFb5cxP+Vb68va+a1qNWxA
         wbD3Tr5CqKXvGVaAsJ7XB86qvYYUJKMd8IjoFjuYSvuK/eTWKThB1lR4p9HY7wfNjSrW
         Di8A==
X-Gm-Message-State: AOAM531AOs7TOnyeuGvkZW7eSV8GeTKwsdmL91Ot+s5Cka2kzTw7VikL
        9wJ4d4EsSnmJU3iEeyGRIzI=
X-Google-Smtp-Source: ABdhPJxCYQCc/QFNy1lVhvJZpRb0bRTlfZmZ8UOmz8tvN3r+QkFP+OFXBODYNcEW4R/c18rLJQ8u8g==
X-Received: by 2002:a1c:b783:: with SMTP id h125mr524461wmf.108.1605556108349;
        Mon, 16 Nov 2020 11:48:28 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id x2sm18560102wru.44.2020.11.16.11.48.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 11:48:27 -0800 (PST)
Subject: Re: [PATCH] ...: srcfix: 's/^.nf$/.EX/; s/^.fi$/.EE/'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
References: <20201115140737.247270-1-alx.manpages@gmail.com>
 <f6eafa23-f893-4f78-6316-b7e0ea15489c@gmail.com>
 <a7189561-5550-f06a-b5aa-2123bf8b8c2a@gmail.com>
 <d927462c-d7c1-11c4-2515-e1a8f95d45bb@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <475fc41f-6256-ecaa-a374-2ac2a6cc3dd9@gmail.com>
Date:   Mon, 16 Nov 2020 20:48:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d927462c-d7c1-11c4-2515-e1a8f95d45bb@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/16/20 11:28 AM, Michael Kerrisk (man-pages) wrote:
[...]
> 
> I took a closer look [1], and it looks like only a minority
> of these should be changed.
> 
> There are some that probably should be fixed (e.g., EXAMPLES)
> to use .EX/.EE. I just fixed some of those.
> 
> But in other cases (e.g., perfmonctl.2, fenv.3), there are
> inline function prototypes (as in SYNOPSIS) or some cases
> where .nf/.fi is really being used to stop line filling.
> 
> Sometimes, in the latter case, .nf/.fi is being used to do
> a "poor man's" table (e.g., see ioctl_tty.2); those should
> be converted to real tables, since the "poor man's" version
> does not render well in PDF (e.g., ioctl_tty.2). I just
> fixed a few of the worst cases.
> 
> Of the remaining uses of .nf/.fi, I didn't notice any cases that
> really bothered me. Maybe at this point it's a case of 
> "move along, there's nothing to see here" :-).

I see, those are not the droids I was looking for :-)

Cheers,

Alex
