Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 231A2505C80
	for <lists+linux-man@lfdr.de>; Mon, 18 Apr 2022 18:37:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234544AbiDRQjt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Apr 2022 12:39:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233687AbiDRQjs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Apr 2022 12:39:48 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0887832059
        for <linux-man@vger.kernel.org>; Mon, 18 Apr 2022 09:37:08 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: krisman)
        with ESMTPSA id 5AE7C1F40E35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1650299827;
        bh=gh/XNNcDE1Hlf79ISVPFOsYmU2Yz/1XttF/BU3zSqis=;
        h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
        b=UFF4ajBvNfws7CfEzrxLaXynpJ2VE+TvvsMNPSf6tTkQWnRpNnmdz0+kxerUq8Ko1
         4nqshxK+EcmDzfq/v/Tx+noVnE7hJXICnBOqOTLELdy7HHgWSZDFeN5V14dmMenRsd
         7hb1Sfq3RVyeJovRCY9b+DnztmfSu+QrfzIfHZKq48ybYQvGBqxycoyn9dzq/DV1iL
         8+l6XyJlrcJb+gSEAC6m70irfL7b1J3qmYna/DVniQBnUGTQTB3J/xF22ZzR5oVwqZ
         CQ4Pnt8QX16RhWtdaI/jj0WI/saInobfRf6x0P5WJGfUJZNgZxG1IbWYT3KQSjvvbt
         x/RKDuxGZ9GrA==
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     Jan Kara <jack@suse.cz>
Cc:     Matthew Bobrowski <repnop@google.com>,
        Amir Goldstein <amir73il@gmail.com>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v4] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Organization: Collabora
References: <YlDCh1OEVxSgu2L9@google.com>
        <CAOQ4uxjpwZs8Jg-cZ5yWqUis=FA=+g+ycjdBchz0kzKBhs6HxQ@mail.gmail.com>
        <YlSzOaBTLA+LqOhU@google.com> <87bkx7xj3q.fsf@collabora.com>
        <YlTKQWTwWY45g9Ws@google.com> <87lewacf0r.fsf_-_@collabora.com>
        <20220413082751.57lzlgwiursy7onk@quack3.lan>
Date:   Mon, 18 Apr 2022 12:37:04 -0400
In-Reply-To: <20220413082751.57lzlgwiursy7onk@quack3.lan> (Jan Kara's message
        of "Wed, 13 Apr 2022 10:27:51 +0200")
Message-ID: <87sfqabb67.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Jan Kara <jack@suse.cz> writes:

> On Tue 12-04-22 14:50:28, Gabriel Krisman Bertazi wrote:

> BTW any plans to add support to XFS or btrfs? I guess it would be good to
> spread the use a bit more so that it does not end up as a niche ext4
> feature not very useful to programmers...

Hi Jan,

Yes.  i have plans to wire other filesystems, starting with btrfs, but I
have a few items ahead of it.  I definitely don't want to have this as a
single-filesystem feature.

> Otherwise the changes look good (modulo some language issues Matthew
> already pointed out).

Thanks. I'm following up with the v5 shortly.

-- 
Gabriel Krisman Bertazi
