Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEDCD708173
	for <lists+linux-man@lfdr.de>; Thu, 18 May 2023 14:39:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbjERMjo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 May 2023 08:39:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbjERMjo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 May 2023 08:39:44 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6756E10E3
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 05:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1684413533;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=vRK9qeoWBHHHIwu9IAicfBjEgxQhOrJnHLADMBCdJvU=;
        b=ToP2t3aEfO0yeqM6jcF6Dl7XvGfwqKecBuTJV6NbewvgBie65mszqk6BW6UK9otiJMAZAA
        uDae56L+ogzSH14mzCIOqj7IFlHMbJy/nf/nYBpgQ8sYZkQJgggMU0LJof0/WOqGLqNW8Q
        0Ryxx+dI+aP3CUyp4Sj4QemguLq3lMc=
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com
 [209.85.219.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-550-WoVlxecQOU-sNgsSAHUy6g-1; Thu, 18 May 2023 08:38:52 -0400
X-MC-Unique: WoVlxecQOU-sNgsSAHUy6g-1
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-ba83fed51b0so2247953276.3
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 05:38:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684413532; x=1687005532;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vRK9qeoWBHHHIwu9IAicfBjEgxQhOrJnHLADMBCdJvU=;
        b=hrXVuWTsDDOwaUPsKUdreIy7j12cCVU39byWpteyslbBiYqRaAcSRZWrTvOgOatf7o
         5zbaSZ/SY7IyIy+Tb7FB0yDWjX9xvfcCG0jIlXET6TVDMsvoTOrhLHXMdyocMybu/84u
         RNs8sz9R+bF81t3SWzWlUZrPLIOqurGBkLjyhwAmk0B7DCwLOvnpnGiNVXa6JrkB5Nz0
         V5hhehuZI9iyMF7GPA6GG1OHRgWeBnOMPZ0njvoOy/S6fJE52KXbN3wmoQG6lfQGQEn1
         q4poLTXWEpMuDBY9ugKxQzG4sXTE8x85sf7UwHZ7l2gAQUFbT8P9OkvjvFUhXCT6IQN1
         1bdA==
X-Gm-Message-State: AC+VfDybkZ1/OeJYaFm7S0Krf9qhVctu6i660KERt7PlS6CHWqsTaAsW
        l3G2cC8IuO9wvSK5BBPE2oXWmvo6/NrIklXK+XRajx+5O+8g82v9sikDLzF80bHdvXbe2R4KCLy
        Vv5b6gLnCGU82q9wy2s+PFwCjJ3jFVdUks1Hh07nrZ+gI4Nk=
X-Received: by 2002:a25:517:0:b0:ba8:28c0:f376 with SMTP id 23-20020a250517000000b00ba828c0f376mr1229618ybf.22.1684413532080;
        Thu, 18 May 2023 05:38:52 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ677uK7lbpeFX7dOLFF/BIhJNzub73hi47dHvtpwbQRIRLcqPfxePkI5no1ghlXVYEv2oYLUh36GdnFRK/12HI=
X-Received: by 2002:a25:517:0:b0:ba8:28c0:f376 with SMTP id
 23-20020a250517000000b00ba828c0f376mr1229612ybf.22.1684413531869; Thu, 18 May
 2023 05:38:51 -0700 (PDT)
MIME-Version: 1.0
From:   Adam Dobes <adobes@redhat.com>
Date:   Thu, 18 May 2023 14:38:40 +0200
Message-ID: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
Subject: SPDX license review requests
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi everyone,

I have recently begun converting license names of licenses found in
Fedora's man-pages package to SPDX. Several of these licenses did not
have corresponding license identifier in SPDX. Because of this I have
submitted several license review requests for these licenses on SPDX
Github (links listed below). If you have any further comments
regarding these requests, please feel free to add them.

One of these licenses, LDP-1 (found in man5/dir_colors.5), was
unfortunately determined to be not-allowed in Fedora, so I'd like to
ask if it's possible to change the license of this man page so that it
can be included in Fedora.

Links to the issues mentioned above:
https://github.com/spdx/license-list-XML/issues/1947
https://github.com/spdx/license-list-XML/issues/1955
https://github.com/spdx/license-list-XML/issues/1957
https://github.com/spdx/license-list-XML/issues/1959

Regards,
Adam

