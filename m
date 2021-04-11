Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32D4B35B726
	for <lists+linux-man@lfdr.de>; Mon, 12 Apr 2021 00:14:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235817AbhDKWOR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Apr 2021 18:14:17 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:59049 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235718AbhDKWOQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Apr 2021 18:14:16 -0400
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
        by mailout.nyi.internal (Postfix) with ESMTP id 7A88C5C00A4;
        Sun, 11 Apr 2021 18:13:59 -0400 (EDT)
Received: from imap35 ([10.202.2.85])
  by compute7.internal (MEProxy); Sun, 11 Apr 2021 18:13:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aliddell.com; h=
        mime-version:message-id:in-reply-to:references:date:from:to:cc
        :subject:content-type; s=fm2; bh=Kw/oKoydPAt0K64TWIJ/DbnmKsZ9UFM
        NA5Bai+hvwoc=; b=l6CabT7ucu+Um/fjkSkZqjhr8yerjsQqCkvfPkxEkTRDvKY
        dUJujBcE2zZ8G+/UfFrw7X2dVW4F7vYKU4Vlr+v2ouiKn64o1Dq0KoReihVd22S4
        TAJYESrXYs7wcFiF9MYjtlCRdSoqO3bwk4lMPOtna879dON0dFUui3qhcw2Y4tzl
        oA6PAzc3euUmEi1jR/IKfsbpevOUoMaDmOtqoOdRKnjIqEMkCTsrv2KEy1R2Plck
        w7za36/7olob/J9GSxEe370sQBl9O9GOtBMdPpOh4arCeoijvj1/LEAEAQqymntQ
        vWeft/mN8bVcCtaCYon50sHRmm//I8iITPliq8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Kw/oKo
        ydPAt0K64TWIJ/DbnmKsZ9UFMNA5Bai+hvwoc=; b=J8TpAPcfvpiQvvw/8UDkOy
        sqSFkpm37er3OpwDOfp57cOrNJqChKu7flyfKw6cutuMjWiMqWPZsqt+1iNqTTJy
        f00ctwkqlMTbMTCp3ZBYO/1Slg3BilSmwbqC5Yq1rrsypvlTPZVTkGyWVLPAiZ9q
        71GZSFxkQvXJ9SE140cM8alK9OPTVhox0Be+vSdwULUisfYos0pefSBseUtUso4W
        Wfkl3JVVhUwjBCoZK8teczu1rYvRBhTe1I0BfpoIRn1SCwdBshQ9rMUfOmBEVhHf
        Hef/B1Plh+zbfPJZkViUT/biS6IJxqWYO9hBEWO+8t4sDsNaxxmfXH15FOoi8LOA
        ==
X-ME-Sender: <xms:p3RzYAjlRP2eo0UgGmItZs-OW3tQ3AExgWcMkKvFj13wGmx_BnSngA>
    <xme:p3RzYJDQcBc9JS_Dfp1v3zE50wk7W_sIpxAGUwp9yC2v5ELpHjN8B5N1PMBJYXwIk
    QLx6nUZxCXi0jYViQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudekiedgtdegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
    ertderredtnecuhfhrohhmpedftegurghmucfnihguuggvlhhlfdcuoehmlhdokhgvrhhn
    vghlrdhorhhgsegrlhhiugguvghllhdrtghomheqnecuggftrfgrthhtvghrnhepfeeigf
    dttddtieelkefhgfeiheekuedvffetgeeuieevveektddvledvkeejgeegnecuvehluhhs
    thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhlodhkvghrnhgvlh
    drohhrghesrghlihguuggvlhhlrdgtohhm
X-ME-Proxy: <xmx:p3RzYIGFinIeioa6tl0ymqX80Ssejb8Z-PE9u8KoEphMXWcwWIq9rg>
    <xmx:p3RzYBQqvG6lJwaBg-VJANxsC0TZ0zxYF544A1s4N2ZxX_yPJXX_HA>
    <xmx:p3RzYNymn5IUK6iU5Jed1CVaUiGFs14EhM4TDM-JoxA_kVKhOqLWrg>
    <xmx:p3RzYLZxuF8Xps_Y82F-bHVcy9nU14tk0FCM_fs70WZTyTSGQhBtRw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id DC2F815A0064; Sun, 11 Apr 2021 18:13:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <0fed7f03-605b-430b-bdfc-47a67af3f083@www.fastmail.com>
In-Reply-To: <6bbb488b-bee2-4ddb-873b-983973984c70@www.fastmail.com>
References: <6bbb488b-bee2-4ddb-873b-983973984c70@www.fastmail.com>
Date:   Sun, 11 Apr 2021 22:13:25 +0000
From:   "Adam Liddell" <ml+kernel.org@aliddell.com>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Re: arp(7) description of gc_stale_time
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Any opinion on this?

Adam

On Tue, 16 Feb 2021, at 17:00, Adam Liddell wrote:
> Hi,
> 
> The arp(7) page's description of gc_stale_time doesn't quite describe 
> the behaviour correctly, at least as I understand it.
> 
> The current description suggests this is the time interval at which a 
> loop will look for stale entries. However, this field is the threshold 
> for marking an entry dead for removal, based on when it was last used 
> (see net/core/neighbour.c lines 935-942) and whether the table is over 
> gc_thresh1. How often this check is done appears to be determined by 
> base_reachable_time (/2) and the third option gc_interval is not 
> involved in this process as far as I can tell, despite its name.
> 
> Perhaps a draft alternate description could be something along the lines of:
> 
> Determines the threshold for removing a cache entry after it was last 
> used and when the cache is larger than gc_thresh1. Defaults to 60 
> seconds.
> 
> Thanks,
> Adam
>
