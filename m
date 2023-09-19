Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88E287A585E
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 06:23:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231165AbjISEXS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 00:23:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231135AbjISEXS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 00:23:18 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F5DFD
        for <linux-man@vger.kernel.org>; Mon, 18 Sep 2023 21:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1695097346;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=gA6m5KBO7a3T9b0ts+bYKHEJyp+wl+DHbjjHQs8sWpg=;
        b=BQxF8fvaNQmIeUOaGcHYCxktQBWZ2Vx7ALzYoW2mR7ae+d3LwMgTmV3sXnn9WfLqv3yEu0
        olkxtVWakMO+t+n3wcsJpGEqSm623hikbd4/ryjK/vfS5tHMfYvYvBQC4Cyh0eze5osaWM
        hu2T8KMzndQy5GekFa07LaBn07F1TuU=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-677-NpHBsZRQNRqR9xcIzP9efg-1; Tue, 19 Sep 2023 00:22:22 -0400
X-MC-Unique: NpHBsZRQNRqR9xcIzP9efg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3031B382C965;
        Tue, 19 Sep 2023 04:22:22 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.11])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 96731140273D;
        Tue, 19 Sep 2023 04:22:21 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     enh <enh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: 3p page wording
References: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
Date:   Tue, 19 Sep 2023 06:22:20 +0200
In-Reply-To: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
        (enh@google.com's message of "Wed, 13 Sep 2023 12:58:36 -0700")
Message-ID: <87o7hy4wsj.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> is it a requirement that the 3p pages only contain text that's
> explicitly in POSIX?

The current 3p terms do not allow modification.

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/man-pages-posix-2017/POSIX-COPYRIGHT>

Thanks,
Florian

