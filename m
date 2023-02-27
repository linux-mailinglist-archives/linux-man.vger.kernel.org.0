Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A414C6A4C72
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 21:43:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229760AbjB0UnH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 15:43:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjB0UnG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 15:43:06 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90ADFC661
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 12:43:04 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 033F61600A3;
        Mon, 27 Feb 2023 12:43:04 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id 68W67PGpeaFO; Mon, 27 Feb 2023 12:43:03 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 425261600A5;
        Mon, 27 Feb 2023 12:43:03 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 425261600A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1677530583;
        bh=zGoM1eqr8zOpbMRtZQ6ysW8OlsdRutLnj7WWBGEpr18=;
        h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
         Content-Transfer-Encoding;
        b=PWmMBrT/OCH5Y2bhZIwN6RL24XXKsk7nrf0G5V/+vvqGCY181jQS7uo9ZoBNZ4D0g
         QP2ys84Q6YArt+pCitXb+UFQ7d2N9D6I6TY5oC5wOd4xSrkgLRslNDWkd2A7r6nOHf
         SWHQhCuF2s3Um6Nle9J44XFXkXHtfnB0Och7lZs0=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id XHO5hpMlDm64; Mon, 27 Feb 2023 12:43:03 -0800 (PST)
Received: from [131.179.64.200] (Penguin.CS.UCLA.EDU [131.179.64.200])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 234F61600A3;
        Mon, 27 Feb 2023 12:43:03 -0800 (PST)
Message-ID: <3913cf8f-7dff-330b-ea7f-4722ff5b2bbc@cs.ucla.edu>
Date:   Mon, 27 Feb 2023 12:43:02 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: %z and %Z in strftime man page require clarification
Content-Language: en-US
To:     Almaz Mingaleev <mingaleev@google.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, enh <enh@google.com>,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
 <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com>
 <CAJ0cOr_+tgOp4VRvHkPa6o10sTBpM8+T6-DJK2a1JkUBvrHFmA@mail.gmail.com>
 <CAJ0cOr99WV6fbdPj3t7QHG4QH0oHAPZb-8sJWYJ0SPMBBYc_Og@mail.gmail.com>
 <e4de4979-59b1-46b3-66b9-1d54a39bf8fa@cs.ucla.edu>
 <CAJ0cOr9_w4gjNnTNnMAWP9upxxtjm+x1Fu6CwqG7W=_Xn2CBPQ@mail.gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <CAJ0cOr9_w4gjNnTNnMAWP9upxxtjm+x1Fu6CwqG7W=_Xn2CBPQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/27/23 00:52, Almaz Mingaleev wrote:
> Thanks Paul, looks good to me. Just one follow-up question: mktime's
> man page does not mention tm_gmtoff / tm_zone fields. Should it also
> be updated, for completeness?

Quite possibly. Lots of updates are needed in this area; I'm afraid I 
haven't had time to look into it. (The general rule ought to be to keep 
it short and sweet, and of course that takes more time....)
