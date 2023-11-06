Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0A67E267B
	for <lists+linux-man@lfdr.de>; Mon,  6 Nov 2023 15:20:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbjKFOUn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Nov 2023 09:20:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbjKFOUm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Nov 2023 09:20:42 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B933B8
        for <linux-man@vger.kernel.org>; Mon,  6 Nov 2023 06:20:40 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88D7BC433C8;
        Mon,  6 Nov 2023 14:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1699280439;
        bh=VSlZmOIuZUtBaTtWUROZwtaPdtOuxG4IppiXh2leL40=;
        h=Date:From:To:Subject:From;
        b=f1gRdAX7WziUs3bPcdc4i+IyyNNjHjNfzZlbHEZRZN1SH84X40tiyWKszTcm6qF3n
         Fb5akG/H2bTcZy3rAY31LgSS6+gwKQFeMWXYX0cRKNpyZJOg7+Qqb0X74FNIeBEoJ9
         tm8Q/IME+ucMCFpvPrO9NcvVP4dtC6+QcT4Ukvgw=
Date:   Mon, 6 Nov 2023 09:20:38 -0500
From:   Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To:     linux-man@vger.kernel.org
Subject: PSA: migrating linux-man to new vger infrastructure
Message-ID: <20231106-rampant-shaggy-mongoose-39eefb@nitro>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_05,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Good day!

I plan to migrate the linux-man@vger.kernel.org list to the new infrastructure
this week. We're still doing it list-by-list to make sure that we don't run
into scaling issues with the new infra.

The migration will be performed live and should not require any downtime.
There will be no changes to how anyone interacts with the list after
migration is completed, so no action is required on anyone's part.

Please let me know if you have any concerns.

Best wishes,
-K
