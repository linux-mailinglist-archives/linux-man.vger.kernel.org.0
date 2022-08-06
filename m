Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3707758B54A
	for <lists+linux-man@lfdr.de>; Sat,  6 Aug 2022 14:02:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229846AbiHFMBs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Aug 2022 08:01:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241713AbiHFMBC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Aug 2022 08:01:02 -0400
Received: from esgaroth.petrovitsch.at (unknown [IPv6:2a01:4f8:120:527b:6876:2a4f:a044:62ad])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 825A46164
        for <linux-man@vger.kernel.org>; Sat,  6 Aug 2022 05:00:58 -0700 (PDT)
Received: from [172.16.0.14] (84-115-219-246.cable.dynamic.surfer.at [84.115.219.246])
        (authenticated bits=0)
        by esgaroth.petrovitsch.at (8.17.1/8.17.1) with ESMTPSA id 276C0jOi037965
        (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT);
        Sat, 6 Aug 2022 14:00:45 +0200
DKIM-Filter: OpenDKIM Filter v2.11.0 esgaroth.petrovitsch.at 276C0jOi037965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=petrovitsch.priv.at;
        s=default; t=1659787249;
        bh=dZmlksDRTf8Hq65FB9Fu6BY07NgiccW3jrTqPWSRlXA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=szArefXp4GMd35vLnVHhf0fUmdMwx1Gp6whRV/kONuHETbiXQNEX1xSC7V7XgCZzn
         pAGXDGXf4wbVwzahIh7hmHagxLkFhALYv1phik3mH47bwRSgtgLEak1epKPm73Epjv
         VO5JvXWmM/dzDQczD07XGnjINlmEFSu8s5HOSxLo=
X-Info-sendmail: I was here
Message-ID: <1ed6b42e-c9fb-32b0-660d-edcc4ba487e8@petrovitsch.priv.at>
Date:   Sat, 6 Aug 2022 14:00:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: .so colophon.man
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, groff@gnu.org,
        linux-man@vger.kernel.org, Ingo Schwarze <schwarze@usta.de>
References: <f179ea51-9b03-3e18-2377-0a39a7647267@gmail.com>
 <YuZzh7w4d5y9b/Jf@asta-kit.de>
 <ca864af1-e4d1-8042-4f50-1633b301a8be@gmail.com>
 <98debad8-80ed-b6e9-b926-44c07b09325e@petrovitsch.priv.at>
 <5d401f91-3c12-d97f-8934-2f72e73a0470@gmail.com>
From:   Bernd Petrovitsch <bernd@petrovitsch.priv.at>
BIMI-Selector: v=BIMI1; s=default
In-Reply-To: <5d401f91-3c12-d97f-8934-2f72e73a0470@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DCC--Metrics: esgaroth.petrovitsch.priv.at 1102; Body=5 Fuz1=5 Fuz2=5
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
        SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi all!

On 02/08/2022 12:29, Alejandro Colomar wrote:
[...]
> Actually, I'm appending the COLOPHON right now in a very simple way (no 
> need for perl(1) if sh(1) can do it):

Cool - but actually sed does it;-)
> find man?/ -not -type d \
> |xargs sed -i "\$a \\
> .SH COLOPHON\\
> This page is part of release\\
> $(git describe | sed 's/^man-pages-//')\\
> of the Linux\\
> .I man-pages\\
> project.\\
> A description of the project,\\
> information about reporting bugs,\\
> and the latest version of this page,\\
> can be found at\\
> .UR https://www.kernel.org/doc/man-pages/\\
> .UE .
> "
> 
> Oh, and I just realized that I'm also appending it to link pages.  I 
> should fix that!

:-)

Kind regards,
	Bernd
-- 
Bernd Petrovitsch                  Email : bernd@petrovitsch.priv.at
      There is NO CLOUD, just other people's computers. - FSFE
                      LUGA : http://www.luga.at
