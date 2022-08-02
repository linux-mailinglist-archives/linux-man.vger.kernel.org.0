Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6BAF587B78
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 13:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236518AbiHBLTR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 07:19:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236577AbiHBLTN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 07:19:13 -0400
X-Greylist: delayed 3236 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 02 Aug 2022 04:19:09 PDT
Received: from esgaroth.petrovitsch.at (unknown [IPv6:2a01:4f8:120:527b:6876:2a4f:a044:62ad])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4012F61
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 04:19:09 -0700 (PDT)
Received: from [172.16.0.14] (84-115-219-246.cable.dynamic.surfer.at [84.115.219.246])
        (authenticated bits=0)
        by esgaroth.petrovitsch.at (8.17.1/8.17.1) with ESMTPSA id 272APEOh3989374
        (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT);
        Tue, 2 Aug 2022 12:25:14 +0200
DKIM-Filter: OpenDKIM Filter v2.11.0 esgaroth.petrovitsch.at 272APEOh3989374
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=petrovitsch.priv.at;
        s=default; t=1659435914;
        bh=IZwGbNkCqfb/h8Db52cMuVkUSfHLqnAQiOMFD0Vyw8I=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=J6D3RL8IpV0qFb/enC9NSC0z2H5NIKIfLdN/IZN/MTuanRH3lhFmoWUwfBpVA0ssO
         yY5J2mDQFE3SeBdyr1zlfzDOJWe1o9cE1oFP7iPQYV/jWk35U0hh7MsDGYLq5mfjzC
         +cJgfZlatNm2Ny4BudyJCX5sUufH2q5P1Y+4KDQE=
X-Info-sendmail: I was here
Message-ID: <98debad8-80ed-b6e9-b926-44c07b09325e@petrovitsch.priv.at>
Date:   Tue, 2 Aug 2022 12:24:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: .so colophon.man
Content-Language: en-US
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, groff@gnu.org,
        linux-man@vger.kernel.org
References: <f179ea51-9b03-3e18-2377-0a39a7647267@gmail.com>
 <YuZzh7w4d5y9b/Jf@asta-kit.de>
 <ca864af1-e4d1-8042-4f50-1633b301a8be@gmail.com>
From:   Bernd Petrovitsch <bernd@petrovitsch.priv.at>
BIMI-Selector: v=BIMI1; s=default
In-Reply-To: <ca864af1-e4d1-8042-4f50-1633b301a8be@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DCC-x.dcc-servers-Metrics: esgaroth.petrovitsch.priv.at 104; Body=5 Fuz1=5
        Fuz2=5
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
        SPF_SOFTFAIL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi all!

On 31/07/2022 14:38, Alejandro Colomar (man-pages) wrote:
[...]
> I think I'll remove the COLOPHON.  One less problem.

Or add another preprocessing step which resolves another type
of include for such cases.

Idk if resolving the /^\.so / with a simple perl/whatever script
seems useful sensible or kills some other feature.

Kind regards,
	Bernd
-- 
Bernd Petrovitsch                  Email : bernd@petrovitsch.priv.at
      There is NO CLOUD, just other people's computers. - FSFE
                      LUGA : http://www.luga.at
