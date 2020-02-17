Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 244FB1618C8
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2020 18:27:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726833AbgBQR16 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Feb 2020 12:27:58 -0500
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:30011 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726462AbgBQR15 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Feb 2020 12:27:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1581960476;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=08LKzsvnTT9UeWvV9H/+CQOQ29/2RCsQRySdL6stddI=;
        b=XKCBU27TEZAHmLKvGVrzkWyl1ocBy3j23d16OpK9+pvv87fK/kantMM1YbRclUz3gQHy5z
        2RVc9PU18xTbyTX4WqHLv13YyPiGnH22m76Sp35tNQceMRti0GbLKlyjWQvZihul2LGUKz
        A4OgCddTVKGN08ktIbVGx69qrWzIda8=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-3-2l3NQL3qO9aN_ghsq4Lg-g-1; Mon, 17 Feb 2020 12:27:54 -0500
X-MC-Unique: 2l3NQL3qO9aN_ghsq4Lg-g-1
Received: by mail-wr1-f70.google.com with SMTP id w17so9311753wrr.9
        for <linux-man@vger.kernel.org>; Mon, 17 Feb 2020 09:27:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=08LKzsvnTT9UeWvV9H/+CQOQ29/2RCsQRySdL6stddI=;
        b=a01/+Z5kJL+DyGYjr88vrxs/vDVOIAxHtmWF81qYq7EraInpl4vHvu6EmAsGNF2OJS
         O63D8YFJGBdeHR7A2xmw8gqrelEn7vLR4MZfbw73xVEyp7jNfNhCVqNlB78g1yDNQSm2
         uI7DiXM2wQc/mPbgcdP1xL8ZNAYRLmyFZvbXr1h+SAmHHSYhGigQjXpSWv6MMaJa/cb5
         IHP+Q3RWq6UmVMIdQHBS2XMHb9R9WnDw5lo4gQ/QAsMNKPXpuQ0soULgmd2geqxxXzCl
         DcIJGNwdiUEsIUdHc9k1C9FjV4Y6XOet+B1La9cpo5oww/I36IiXFU9nvDW4WImlusT6
         9rfA==
X-Gm-Message-State: APjAAAWtIggw1k9CtH+GEjDWBhV0e1pyAmHUhXeu40u/J8T6ntE+nS52
        WxFiPtOdzY6WehyTRRUXacngHXjT5VZdJIV10V5//p7r+RDncVd4ZEq13GStUmDw5BQn48uIwB4
        sT/5P0ZSx3afSKuyjNPRI
X-Received: by 2002:a7b:cc6a:: with SMTP id n10mr95390wmj.170.1581960473709;
        Mon, 17 Feb 2020 09:27:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqyrZBJx14eS76rtZFXpjmr96XcqNcAkzXnHV/0gN+AeE+JhCkQO9sUw7wCqp0fYXa8gZOmiRQ==
X-Received: by 2002:a7b:cc6a:: with SMTP id n10mr95374wmj.170.1581960473502;
        Mon, 17 Feb 2020 09:27:53 -0800 (PST)
Received: from steredhat (host209-4-dynamic.27-79-r.retail.telecomitalia.it. [79.27.4.209])
        by smtp.gmail.com with ESMTPSA id o4sm1974222wrx.25.2020.02.17.09.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2020 09:27:52 -0800 (PST)
Date:   Mon, 17 Feb 2020 18:27:50 +0100
From:   Stefano Garzarella <sgarzare@redhat.com>
To:     Jorgen Hansen <jhansen@vmware.com>
Cc:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Stefan Hajnoczi <stefanha@redhat.com>,
        Dexuan Cui <decui@microsoft.com>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: Re: [PATCH v2] vsock.7: add VMADDR_CID_LOCAL description
Message-ID: <20200217172750.lutmlnbtp2rdpiw6@steredhat>
References: <20200214130749.126603-1-sgarzare@redhat.com>
 <MWHPR05MB3376C52124D5BB1835CC3362DA160@MWHPR05MB3376.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MWHPR05MB3376C52124D5BB1835CC3362DA160@MWHPR05MB3376.namprd05.prod.outlook.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Feb 17, 2020 at 01:55:58PM +0000, Jorgen Hansen wrote:
> > From: Stefano Garzarella [mailto:sgarzare@redhat.com]
> > Sent: Friday, February 14, 2020 2:08 PM
> > To: mtk.manpages@gmail.com
> > Cc: Jorgen Hansen <jhansen@vmware.com>; linux-man@vger.kernel.org;
> > Stefan Hajnoczi <stefanha@redhat.com>; Dexuan Cui
> > <decui@microsoft.com>; netdev@vger.kernel.org
> > Subject: [PATCH v2] vsock.7: add VMADDR_CID_LOCAL description
> > 
> > Linux 5.6 added the new well-known VMADDR_CID_LOCAL for local
> > communication.
> > 
> > This patch explains how to use it and remove the legacy
> > VMADDR_CID_RESERVED no longer available.
> > 
> > Signed-off-by: Stefano Garzarella <sgarzare@redhat.com>
> > ---
> > v2:
> >     * rephrased "Local communication" description [Stefan]
> >     * added a mention of previous versions that supported
> >       loopback only in the guest [Stefan]
> > ---
> 
> 
> > @@ -222,6 +232,11 @@ are valid.
> >  Support for VMware (VMCI) has been available since Linux 3.9.
> >  KVM (virtio) is supported since Linux 4.8.
> >  Hyper-V is supported since Linux 4.14.
> > +.PP
> > +VMADDR_CID_LOCAL is supported since Linux 5.6.
> > +Local communication in the guest and on the host is available since Linux
> > 5.6.
> > +Previous versions partially supported it only in the guest and only
> > +with some transports (VMCI and virtio).
> 
> Maybe rephrase the last part slightly to something like:
> 
> Previous versions only supported local communication within a guest (not on the host),
> and only with some transports (VMCI and virtio).

I think it is better, I'll send a v3 with this part changed :-)

> 
> Otherwise, looks good to me. Thanks for making this update.
> 
> Reviewed-by: Jorgen Hansen <jhansen@vmware.com>
> 

Thanks,
Stefano

