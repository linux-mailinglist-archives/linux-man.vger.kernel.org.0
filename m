Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 838A412DE0E
	for <lists+linux-man@lfdr.de>; Wed,  1 Jan 2020 08:27:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725787AbgAAH1W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Jan 2020 02:27:22 -0500
Received: from mail-pf1-f193.google.com ([209.85.210.193]:40101 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725783AbgAAH1W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Jan 2020 02:27:22 -0500
Received: by mail-pf1-f193.google.com with SMTP id q8so20541760pfh.7
        for <linux-man@vger.kernel.org>; Tue, 31 Dec 2019 23:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GShxn2G1xP7MV9H02yV9yDH5BGLP22PfKRaI9n+/Sl0=;
        b=FkV4pPDXo5/FSIvuHed64KfHf2jQXwHFi+TYJu32YS4s4i9NY/NkM9yHkHrclwRgOb
         Nc/yG576TrL+DAn/4lN6JrTrv5rUm+3zSZWPSRmi8E9fGrtTElTqdKvvKj6Bn7nCY3zG
         I37IQb4Om73XMa7wpcndS69yyiIZTrI3HDM7HgriZZN76YeV3OzN3aWRQ7JktNenll5R
         6BJh286xWf5g+ita5ALr3/J8JgfQojgxBnje7dSpRtED2Mr4y09oUJ/3ovM79rtdRd7J
         fZt0GzL93m3dPGYcyF6yBQoCPNbBLYSKuu0IbyJK7yGzQBsx5oMi8+jlv4gcPFc8qPP4
         efjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GShxn2G1xP7MV9H02yV9yDH5BGLP22PfKRaI9n+/Sl0=;
        b=WGAIiFANhdPU2MxmOpneRDWYiDgsyd+m0AOq4Mdf+Whq8CsK3RnIn71cPbk7/SQXmV
         LMTpoA5Nds+tSKWYBSPOMS8rhyzs2y6InH1V03Fsg7RmcmziZ7SpKt55ACYpF92xZj/I
         WrDhaBsjc8LGxc3zIba7sBxz3uX+1Yyku5G7M3C+DU9BLo9SlwfX80tEgn3JcS3UGL7g
         g1XfrsoiPbIXwuWhJPFxDKjbV1PnpymzYLWN6OMJG2NTut1J5gSZr3eUJt/Q0Weai29o
         2yErlBy0L7o+FFZtgNM1CQvOZuAwL+JXhOHaMxD5zNS3KDyHgBhoGKnNHIS3tLYTtsEG
         4wKQ==
X-Gm-Message-State: APjAAAVJpkysmTA+CH9laNVBi+uwlVS06Azdoq+l0+DlaYo71M4qvJ/9
        jabT9yxmlx709JaibTWPxRiQ/c1F
X-Google-Smtp-Source: APXvYqwCaDWv/FORLecUmlWDLeYLqGzQQOp4bamib7GtCmS9zHb28AZntYZisyCt1unzPdDpCcbT1Q==
X-Received: by 2002:a63:ec0a:: with SMTP id j10mr82927804pgh.178.1577863641947;
        Tue, 31 Dec 2019 23:27:21 -0800 (PST)
Received: from [192.168.0.104] (222-154-25-17-vdsl.sparkbb.co.nz. [222.154.25.17])
        by smtp.gmail.com with ESMTPSA id w11sm53309034pfi.77.2019.12.31.23.27.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Dec 2019 23:27:21 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] getpt.3: Remove mention of O_NOCTTY
To:     Samuel Thibault <samuel.thibault@ens-lyon.org>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20191231170135.gqbv35jdlqfmomee@function>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a7e44056-0b1f-5890-2820-415c71f52424@gmail.com>
Date:   Wed, 1 Jan 2020 08:27:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191231170135.gqbv35jdlqfmomee@function>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Samuel

On 12/31/19 6:01 PM, Samuel Thibault wrote:
> The glibc implementation of getpt has actually never been setting
> O_NOCTTY when opening /dev/ptmx or BSD ptys.
> 
> Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

(Inline patches preferred.)

Thanks. Patch applied.

Cheers,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
